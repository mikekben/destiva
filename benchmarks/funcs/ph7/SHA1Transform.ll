; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SHA1Transform.one = external hidden global i32, align 4

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemcpy(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @SHA1Transform(ptr noundef %state, ptr noundef %buffer) #0 {
entry:
  %state.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %qq = alloca [5 x i32], align 16
  %block = alloca [16 x i32], align 16
  %y = alloca i32, align 4
  %tmp = alloca i32, align 4
  %y10 = alloca i32, align 4
  %tmp12 = alloca i32, align 4
  %y16 = alloca i32, align 4
  %tmp18 = alloca i32, align 4
  %y22 = alloca i32, align 4
  %tmp24 = alloca i32, align 4
  %y33 = alloca i32, align 4
  %tmp35 = alloca i32, align 4
  %y37 = alloca i32, align 4
  %tmp39 = alloca i32, align 4
  %y45 = alloca i32, align 4
  %tmp47 = alloca i32, align 4
  %y51 = alloca i32, align 4
  %tmp53 = alloca i32, align 4
  %y62 = alloca i32, align 4
  %tmp64 = alloca i32, align 4
  %y66 = alloca i32, align 4
  %tmp68 = alloca i32, align 4
  %y74 = alloca i32, align 4
  %tmp76 = alloca i32, align 4
  %y80 = alloca i32, align 4
  %tmp82 = alloca i32, align 4
  %y91 = alloca i32, align 4
  %tmp93 = alloca i32, align 4
  %y95 = alloca i32, align 4
  %tmp97 = alloca i32, align 4
  %y103 = alloca i32, align 4
  %tmp105 = alloca i32, align 4
  %y109 = alloca i32, align 4
  %tmp111 = alloca i32, align 4
  %y120 = alloca i32, align 4
  %tmp122 = alloca i32, align 4
  %y124 = alloca i32, align 4
  %tmp126 = alloca i32, align 4
  %y132 = alloca i32, align 4
  %tmp134 = alloca i32, align 4
  %y138 = alloca i32, align 4
  %tmp140 = alloca i32, align 4
  %y149 = alloca i32, align 4
  %tmp151 = alloca i32, align 4
  %y153 = alloca i32, align 4
  %tmp155 = alloca i32, align 4
  %y161 = alloca i32, align 4
  %tmp163 = alloca i32, align 4
  %y167 = alloca i32, align 4
  %tmp169 = alloca i32, align 4
  %y178 = alloca i32, align 4
  %tmp180 = alloca i32, align 4
  %y182 = alloca i32, align 4
  %tmp184 = alloca i32, align 4
  %y190 = alloca i32, align 4
  %tmp192 = alloca i32, align 4
  %y196 = alloca i32, align 4
  %tmp198 = alloca i32, align 4
  %y207 = alloca i32, align 4
  %tmp209 = alloca i32, align 4
  %y211 = alloca i32, align 4
  %tmp213 = alloca i32, align 4
  %y219 = alloca i32, align 4
  %tmp221 = alloca i32, align 4
  %y225 = alloca i32, align 4
  %tmp227 = alloca i32, align 4
  %y236 = alloca i32, align 4
  %tmp238 = alloca i32, align 4
  %y240 = alloca i32, align 4
  %tmp242 = alloca i32, align 4
  %y248 = alloca i32, align 4
  %tmp250 = alloca i32, align 4
  %y254 = alloca i32, align 4
  %tmp256 = alloca i32, align 4
  %y265 = alloca i32, align 4
  %tmp267 = alloca i32, align 4
  %y269 = alloca i32, align 4
  %tmp271 = alloca i32, align 4
  %y277 = alloca i32, align 4
  %tmp279 = alloca i32, align 4
  %y283 = alloca i32, align 4
  %tmp285 = alloca i32, align 4
  %y294 = alloca i32, align 4
  %tmp296 = alloca i32, align 4
  %y298 = alloca i32, align 4
  %tmp300 = alloca i32, align 4
  %y306 = alloca i32, align 4
  %tmp308 = alloca i32, align 4
  %y312 = alloca i32, align 4
  %tmp314 = alloca i32, align 4
  %y323 = alloca i32, align 4
  %tmp325 = alloca i32, align 4
  %y327 = alloca i32, align 4
  %tmp329 = alloca i32, align 4
  %y335 = alloca i32, align 4
  %tmp337 = alloca i32, align 4
  %y341 = alloca i32, align 4
  %tmp343 = alloca i32, align 4
  %y352 = alloca i32, align 4
  %tmp354 = alloca i32, align 4
  %y356 = alloca i32, align 4
  %tmp358 = alloca i32, align 4
  %y364 = alloca i32, align 4
  %tmp366 = alloca i32, align 4
  %y370 = alloca i32, align 4
  %tmp372 = alloca i32, align 4
  %y381 = alloca i32, align 4
  %tmp383 = alloca i32, align 4
  %y385 = alloca i32, align 4
  %tmp387 = alloca i32, align 4
  %y393 = alloca i32, align 4
  %tmp395 = alloca i32, align 4
  %y399 = alloca i32, align 4
  %tmp401 = alloca i32, align 4
  %y410 = alloca i32, align 4
  %tmp412 = alloca i32, align 4
  %y414 = alloca i32, align 4
  %tmp416 = alloca i32, align 4
  %y422 = alloca i32, align 4
  %tmp424 = alloca i32, align 4
  %y428 = alloca i32, align 4
  %tmp430 = alloca i32, align 4
  %y439 = alloca i32, align 4
  %tmp441 = alloca i32, align 4
  %y443 = alloca i32, align 4
  %tmp445 = alloca i32, align 4
  %y451 = alloca i32, align 4
  %tmp453 = alloca i32, align 4
  %y457 = alloca i32, align 4
  %tmp459 = alloca i32, align 4
  %y471 = alloca i32, align 4
  %tmp473 = alloca i32, align 4
  %y477 = alloca i32, align 4
  %tmp479 = alloca i32, align 4
  %y491 = alloca i32, align 4
  %tmp493 = alloca i32, align 4
  %y497 = alloca i32, align 4
  %tmp499 = alloca i32, align 4
  %y511 = alloca i32, align 4
  %tmp513 = alloca i32, align 4
  %y517 = alloca i32, align 4
  %tmp519 = alloca i32, align 4
  %y531 = alloca i32, align 4
  %tmp533 = alloca i32, align 4
  %y537 = alloca i32, align 4
  %tmp539 = alloca i32, align 4
  %y551 = alloca i32, align 4
  %tmp553 = alloca i32, align 4
  %y557 = alloca i32, align 4
  %tmp559 = alloca i32, align 4
  %y571 = alloca i32, align 4
  %tmp573 = alloca i32, align 4
  %y577 = alloca i32, align 4
  %tmp579 = alloca i32, align 4
  %y591 = alloca i32, align 4
  %tmp593 = alloca i32, align 4
  %y597 = alloca i32, align 4
  %tmp599 = alloca i32, align 4
  %y611 = alloca i32, align 4
  %tmp613 = alloca i32, align 4
  %y617 = alloca i32, align 4
  %tmp619 = alloca i32, align 4
  %y631 = alloca i32, align 4
  %tmp633 = alloca i32, align 4
  %y637 = alloca i32, align 4
  %tmp639 = alloca i32, align 4
  %y651 = alloca i32, align 4
  %tmp653 = alloca i32, align 4
  %y657 = alloca i32, align 4
  %tmp659 = alloca i32, align 4
  %y671 = alloca i32, align 4
  %tmp673 = alloca i32, align 4
  %y677 = alloca i32, align 4
  %tmp679 = alloca i32, align 4
  %y691 = alloca i32, align 4
  %tmp693 = alloca i32, align 4
  %y697 = alloca i32, align 4
  %tmp699 = alloca i32, align 4
  %y711 = alloca i32, align 4
  %tmp713 = alloca i32, align 4
  %y717 = alloca i32, align 4
  %tmp719 = alloca i32, align 4
  %y731 = alloca i32, align 4
  %tmp733 = alloca i32, align 4
  %y737 = alloca i32, align 4
  %tmp739 = alloca i32, align 4
  %y751 = alloca i32, align 4
  %tmp753 = alloca i32, align 4
  %y757 = alloca i32, align 4
  %tmp759 = alloca i32, align 4
  %y771 = alloca i32, align 4
  %tmp773 = alloca i32, align 4
  %y777 = alloca i32, align 4
  %tmp779 = alloca i32, align 4
  %y788 = alloca i32, align 4
  %tmp796 = alloca i32, align 4
  %y800 = alloca i32, align 4
  %tmp802 = alloca i32, align 4
  %y806 = alloca i32, align 4
  %tmp808 = alloca i32, align 4
  %y817 = alloca i32, align 4
  %tmp825 = alloca i32, align 4
  %y829 = alloca i32, align 4
  %tmp831 = alloca i32, align 4
  %y835 = alloca i32, align 4
  %tmp837 = alloca i32, align 4
  %y846 = alloca i32, align 4
  %tmp854 = alloca i32, align 4
  %y858 = alloca i32, align 4
  %tmp860 = alloca i32, align 4
  %y864 = alloca i32, align 4
  %tmp866 = alloca i32, align 4
  %y875 = alloca i32, align 4
  %tmp883 = alloca i32, align 4
  %y887 = alloca i32, align 4
  %tmp889 = alloca i32, align 4
  %y893 = alloca i32, align 4
  %tmp895 = alloca i32, align 4
  %y902 = alloca i32, align 4
  %tmp910 = alloca i32, align 4
  %y914 = alloca i32, align 4
  %tmp916 = alloca i32, align 4
  %y920 = alloca i32, align 4
  %tmp922 = alloca i32, align 4
  %y929 = alloca i32, align 4
  %tmp937 = alloca i32, align 4
  %y941 = alloca i32, align 4
  %tmp943 = alloca i32, align 4
  %y947 = alloca i32, align 4
  %tmp949 = alloca i32, align 4
  %y956 = alloca i32, align 4
  %tmp964 = alloca i32, align 4
  %y968 = alloca i32, align 4
  %tmp970 = alloca i32, align 4
  %y974 = alloca i32, align 4
  %tmp976 = alloca i32, align 4
  %y983 = alloca i32, align 4
  %tmp991 = alloca i32, align 4
  %y995 = alloca i32, align 4
  %tmp997 = alloca i32, align 4
  %y1001 = alloca i32, align 4
  %tmp1003 = alloca i32, align 4
  %y1010 = alloca i32, align 4
  %tmp1018 = alloca i32, align 4
  %y1022 = alloca i32, align 4
  %tmp1024 = alloca i32, align 4
  %y1028 = alloca i32, align 4
  %tmp1030 = alloca i32, align 4
  %y1037 = alloca i32, align 4
  %tmp1045 = alloca i32, align 4
  %y1049 = alloca i32, align 4
  %tmp1051 = alloca i32, align 4
  %y1055 = alloca i32, align 4
  %tmp1057 = alloca i32, align 4
  %y1064 = alloca i32, align 4
  %tmp1072 = alloca i32, align 4
  %y1076 = alloca i32, align 4
  %tmp1078 = alloca i32, align 4
  %y1082 = alloca i32, align 4
  %tmp1084 = alloca i32, align 4
  %y1091 = alloca i32, align 4
  %tmp1099 = alloca i32, align 4
  %y1103 = alloca i32, align 4
  %tmp1105 = alloca i32, align 4
  %y1109 = alloca i32, align 4
  %tmp1111 = alloca i32, align 4
  %y1118 = alloca i32, align 4
  %tmp1126 = alloca i32, align 4
  %y1130 = alloca i32, align 4
  %tmp1132 = alloca i32, align 4
  %y1136 = alloca i32, align 4
  %tmp1138 = alloca i32, align 4
  %y1145 = alloca i32, align 4
  %tmp1153 = alloca i32, align 4
  %y1157 = alloca i32, align 4
  %tmp1159 = alloca i32, align 4
  %y1163 = alloca i32, align 4
  %tmp1165 = alloca i32, align 4
  %y1172 = alloca i32, align 4
  %tmp1180 = alloca i32, align 4
  %y1184 = alloca i32, align 4
  %tmp1186 = alloca i32, align 4
  %y1190 = alloca i32, align 4
  %tmp1192 = alloca i32, align 4
  %y1199 = alloca i32, align 4
  %tmp1207 = alloca i32, align 4
  %y1211 = alloca i32, align 4
  %tmp1213 = alloca i32, align 4
  %y1217 = alloca i32, align 4
  %tmp1219 = alloca i32, align 4
  %y1226 = alloca i32, align 4
  %tmp1234 = alloca i32, align 4
  %y1238 = alloca i32, align 4
  %tmp1240 = alloca i32, align 4
  %y1244 = alloca i32, align 4
  %tmp1246 = alloca i32, align 4
  %y1253 = alloca i32, align 4
  %tmp1261 = alloca i32, align 4
  %y1265 = alloca i32, align 4
  %tmp1267 = alloca i32, align 4
  %y1271 = alloca i32, align 4
  %tmp1273 = alloca i32, align 4
  %y1280 = alloca i32, align 4
  %tmp1288 = alloca i32, align 4
  %y1292 = alloca i32, align 4
  %tmp1294 = alloca i32, align 4
  %y1298 = alloca i32, align 4
  %tmp1300 = alloca i32, align 4
  %y1307 = alloca i32, align 4
  %tmp1315 = alloca i32, align 4
  %y1319 = alloca i32, align 4
  %tmp1321 = alloca i32, align 4
  %y1325 = alloca i32, align 4
  %tmp1327 = alloca i32, align 4
  %y1334 = alloca i32, align 4
  %tmp1342 = alloca i32, align 4
  %y1346 = alloca i32, align 4
  %tmp1348 = alloca i32, align 4
  %y1352 = alloca i32, align 4
  %tmp1354 = alloca i32, align 4
  %y1361 = alloca i32, align 4
  %tmp1369 = alloca i32, align 4
  %y1373 = alloca i32, align 4
  %tmp1375 = alloca i32, align 4
  %y1379 = alloca i32, align 4
  %tmp1381 = alloca i32, align 4
  %y1388 = alloca i32, align 4
  %tmp1396 = alloca i32, align 4
  %y1400 = alloca i32, align 4
  %tmp1402 = alloca i32, align 4
  %y1406 = alloca i32, align 4
  %tmp1408 = alloca i32, align 4
  %y1415 = alloca i32, align 4
  %tmp1423 = alloca i32, align 4
  %y1427 = alloca i32, align 4
  %tmp1429 = alloca i32, align 4
  %y1433 = alloca i32, align 4
  %tmp1435 = alloca i32, align 4
  %y1446 = alloca i32, align 4
  %tmp1454 = alloca i32, align 4
  %y1458 = alloca i32, align 4
  %tmp1460 = alloca i32, align 4
  %y1464 = alloca i32, align 4
  %tmp1466 = alloca i32, align 4
  %y1477 = alloca i32, align 4
  %tmp1485 = alloca i32, align 4
  %y1489 = alloca i32, align 4
  %tmp1491 = alloca i32, align 4
  %y1495 = alloca i32, align 4
  %tmp1497 = alloca i32, align 4
  %y1508 = alloca i32, align 4
  %tmp1516 = alloca i32, align 4
  %y1520 = alloca i32, align 4
  %tmp1522 = alloca i32, align 4
  %y1526 = alloca i32, align 4
  %tmp1528 = alloca i32, align 4
  %y1539 = alloca i32, align 4
  %tmp1547 = alloca i32, align 4
  %y1551 = alloca i32, align 4
  %tmp1553 = alloca i32, align 4
  %y1557 = alloca i32, align 4
  %tmp1559 = alloca i32, align 4
  %y1570 = alloca i32, align 4
  %tmp1578 = alloca i32, align 4
  %y1582 = alloca i32, align 4
  %tmp1584 = alloca i32, align 4
  %y1588 = alloca i32, align 4
  %tmp1590 = alloca i32, align 4
  %y1601 = alloca i32, align 4
  %tmp1609 = alloca i32, align 4
  %y1613 = alloca i32, align 4
  %tmp1615 = alloca i32, align 4
  %y1619 = alloca i32, align 4
  %tmp1621 = alloca i32, align 4
  %y1632 = alloca i32, align 4
  %tmp1640 = alloca i32, align 4
  %y1644 = alloca i32, align 4
  %tmp1646 = alloca i32, align 4
  %y1650 = alloca i32, align 4
  %tmp1652 = alloca i32, align 4
  %y1663 = alloca i32, align 4
  %tmp1671 = alloca i32, align 4
  %y1675 = alloca i32, align 4
  %tmp1677 = alloca i32, align 4
  %y1681 = alloca i32, align 4
  %tmp1683 = alloca i32, align 4
  %y1694 = alloca i32, align 4
  %tmp1702 = alloca i32, align 4
  %y1706 = alloca i32, align 4
  %tmp1708 = alloca i32, align 4
  %y1712 = alloca i32, align 4
  %tmp1714 = alloca i32, align 4
  %y1725 = alloca i32, align 4
  %tmp1733 = alloca i32, align 4
  %y1737 = alloca i32, align 4
  %tmp1739 = alloca i32, align 4
  %y1743 = alloca i32, align 4
  %tmp1745 = alloca i32, align 4
  %y1756 = alloca i32, align 4
  %tmp1764 = alloca i32, align 4
  %y1768 = alloca i32, align 4
  %tmp1770 = alloca i32, align 4
  %y1774 = alloca i32, align 4
  %tmp1776 = alloca i32, align 4
  %y1787 = alloca i32, align 4
  %tmp1795 = alloca i32, align 4
  %y1799 = alloca i32, align 4
  %tmp1801 = alloca i32, align 4
  %y1805 = alloca i32, align 4
  %tmp1807 = alloca i32, align 4
  %y1818 = alloca i32, align 4
  %tmp1826 = alloca i32, align 4
  %y1830 = alloca i32, align 4
  %tmp1832 = alloca i32, align 4
  %y1836 = alloca i32, align 4
  %tmp1838 = alloca i32, align 4
  %y1849 = alloca i32, align 4
  %tmp1857 = alloca i32, align 4
  %y1861 = alloca i32, align 4
  %tmp1863 = alloca i32, align 4
  %y1867 = alloca i32, align 4
  %tmp1869 = alloca i32, align 4
  %y1880 = alloca i32, align 4
  %tmp1888 = alloca i32, align 4
  %y1892 = alloca i32, align 4
  %tmp1894 = alloca i32, align 4
  %y1898 = alloca i32, align 4
  %tmp1900 = alloca i32, align 4
  %y1911 = alloca i32, align 4
  %tmp1919 = alloca i32, align 4
  %y1923 = alloca i32, align 4
  %tmp1925 = alloca i32, align 4
  %y1929 = alloca i32, align 4
  %tmp1931 = alloca i32, align 4
  %y1942 = alloca i32, align 4
  %tmp1950 = alloca i32, align 4
  %y1954 = alloca i32, align 4
  %tmp1956 = alloca i32, align 4
  %y1960 = alloca i32, align 4
  %tmp1962 = alloca i32, align 4
  %y1973 = alloca i32, align 4
  %tmp1981 = alloca i32, align 4
  %y1985 = alloca i32, align 4
  %tmp1987 = alloca i32, align 4
  %y1991 = alloca i32, align 4
  %tmp1993 = alloca i32, align 4
  %y2004 = alloca i32, align 4
  %tmp2012 = alloca i32, align 4
  %y2016 = alloca i32, align 4
  %tmp2018 = alloca i32, align 4
  %y2022 = alloca i32, align 4
  %tmp2024 = alloca i32, align 4
  %y2035 = alloca i32, align 4
  %tmp2043 = alloca i32, align 4
  %y2047 = alloca i32, align 4
  %tmp2049 = alloca i32, align 4
  %y2053 = alloca i32, align 4
  %tmp2055 = alloca i32, align 4
  %y2062 = alloca i32, align 4
  %tmp2070 = alloca i32, align 4
  %y2074 = alloca i32, align 4
  %tmp2076 = alloca i32, align 4
  %y2080 = alloca i32, align 4
  %tmp2082 = alloca i32, align 4
  %y2089 = alloca i32, align 4
  %tmp2097 = alloca i32, align 4
  %y2101 = alloca i32, align 4
  %tmp2103 = alloca i32, align 4
  %y2107 = alloca i32, align 4
  %tmp2109 = alloca i32, align 4
  %y2116 = alloca i32, align 4
  %tmp2124 = alloca i32, align 4
  %y2128 = alloca i32, align 4
  %tmp2130 = alloca i32, align 4
  %y2134 = alloca i32, align 4
  %tmp2136 = alloca i32, align 4
  %y2143 = alloca i32, align 4
  %tmp2151 = alloca i32, align 4
  %y2155 = alloca i32, align 4
  %tmp2157 = alloca i32, align 4
  %y2161 = alloca i32, align 4
  %tmp2163 = alloca i32, align 4
  %y2170 = alloca i32, align 4
  %tmp2178 = alloca i32, align 4
  %y2182 = alloca i32, align 4
  %tmp2184 = alloca i32, align 4
  %y2188 = alloca i32, align 4
  %tmp2190 = alloca i32, align 4
  %y2197 = alloca i32, align 4
  %tmp2205 = alloca i32, align 4
  %y2209 = alloca i32, align 4
  %tmp2211 = alloca i32, align 4
  %y2215 = alloca i32, align 4
  %tmp2217 = alloca i32, align 4
  %y2224 = alloca i32, align 4
  %tmp2232 = alloca i32, align 4
  %y2236 = alloca i32, align 4
  %tmp2238 = alloca i32, align 4
  %y2242 = alloca i32, align 4
  %tmp2244 = alloca i32, align 4
  %y2251 = alloca i32, align 4
  %tmp2259 = alloca i32, align 4
  %y2263 = alloca i32, align 4
  %tmp2265 = alloca i32, align 4
  %y2269 = alloca i32, align 4
  %tmp2271 = alloca i32, align 4
  %y2278 = alloca i32, align 4
  %tmp2286 = alloca i32, align 4
  %y2290 = alloca i32, align 4
  %tmp2292 = alloca i32, align 4
  %y2296 = alloca i32, align 4
  %tmp2298 = alloca i32, align 4
  %y2305 = alloca i32, align 4
  %tmp2313 = alloca i32, align 4
  %y2317 = alloca i32, align 4
  %tmp2319 = alloca i32, align 4
  %y2323 = alloca i32, align 4
  %tmp2325 = alloca i32, align 4
  %y2332 = alloca i32, align 4
  %tmp2340 = alloca i32, align 4
  %y2344 = alloca i32, align 4
  %tmp2346 = alloca i32, align 4
  %y2350 = alloca i32, align 4
  %tmp2352 = alloca i32, align 4
  %y2359 = alloca i32, align 4
  %tmp2367 = alloca i32, align 4
  %y2371 = alloca i32, align 4
  %tmp2373 = alloca i32, align 4
  %y2377 = alloca i32, align 4
  %tmp2379 = alloca i32, align 4
  %y2386 = alloca i32, align 4
  %tmp2394 = alloca i32, align 4
  %y2398 = alloca i32, align 4
  %tmp2400 = alloca i32, align 4
  %y2404 = alloca i32, align 4
  %tmp2406 = alloca i32, align 4
  %y2413 = alloca i32, align 4
  %tmp2421 = alloca i32, align 4
  %y2425 = alloca i32, align 4
  %tmp2427 = alloca i32, align 4
  %y2431 = alloca i32, align 4
  %tmp2433 = alloca i32, align 4
  %y2440 = alloca i32, align 4
  %tmp2448 = alloca i32, align 4
  %y2452 = alloca i32, align 4
  %tmp2454 = alloca i32, align 4
  %y2458 = alloca i32, align 4
  %tmp2460 = alloca i32, align 4
  %y2467 = alloca i32, align 4
  %tmp2475 = alloca i32, align 4
  %y2479 = alloca i32, align 4
  %tmp2481 = alloca i32, align 4
  %y2485 = alloca i32, align 4
  %tmp2487 = alloca i32, align 4
  %y2494 = alloca i32, align 4
  %tmp2502 = alloca i32, align 4
  %y2506 = alloca i32, align 4
  %tmp2508 = alloca i32, align 4
  %y2512 = alloca i32, align 4
  %tmp2514 = alloca i32, align 4
  %y2521 = alloca i32, align 4
  %tmp2529 = alloca i32, align 4
  %y2533 = alloca i32, align 4
  %tmp2535 = alloca i32, align 4
  %y2539 = alloca i32, align 4
  %tmp2541 = alloca i32, align 4
  %y2548 = alloca i32, align 4
  %tmp2556 = alloca i32, align 4
  %y2560 = alloca i32, align 4
  %tmp2562 = alloca i32, align 4
  %y2566 = alloca i32, align 4
  %tmp2568 = alloca i32, align 4
  %y2575 = alloca i32, align 4
  %tmp2583 = alloca i32, align 4
  %y2587 = alloca i32, align 4
  %tmp2589 = alloca i32, align 4
  %y2593 = alloca i32, align 4
  %tmp2595 = alloca i32, align 4
  store ptr %state, ptr %state.addr, align 8
  store ptr %buffer, ptr %buffer.addr, align 8
  %0 = load ptr, ptr %buffer.addr, align 8
  %arraydecay = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 0
  %call = call i32 @SyMemcpy(ptr noundef %0, ptr noundef %arraydecay, i32 noundef 64)
  %1 = load ptr, ptr %state.addr, align 8
  %arraydecay1 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %call2 = call i32 @SyMemcpy(ptr noundef %1, ptr noundef %arraydecay1, i32 noundef 20)
  %2 = load i8, ptr @SHA1Transform.one, align 4
  %conv = zext i8 %2 to i32
  %cmp = icmp eq i32 1, %conv
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %3 = load i32, ptr %arrayidx, align 4
  %arrayidx4 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %4 = load i32, ptr %arrayidx4, align 8
  %arrayidx5 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %5 = load i32, ptr %arrayidx5, align 4
  %xor = xor i32 %4, %5
  %and = and i32 %3, %xor
  %arrayidx6 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %6 = load i32, ptr %arrayidx6, align 4
  %xor7 = xor i32 %and, %6
  %arrayidx8 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 0
  %7 = load i32, ptr %arrayidx8, align 16
  %8 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 8, i32 %7) #1, !srcloc !6
  store i32 %8, ptr %y, align 4
  %9 = load i32, ptr %y, align 4
  store i32 %9, ptr %tmp, align 4
  %10 = load i32, ptr %tmp, align 4
  %and9 = and i32 %10, -16711936
  %arrayidx11 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 0
  %11 = load i32, ptr %arrayidx11, align 16
  %12 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 8, i32 %11) #1, !srcloc !7
  store i32 %12, ptr %y10, align 4
  %13 = load i32, ptr %y10, align 4
  store i32 %13, ptr %tmp12, align 4
  %14 = load i32, ptr %tmp12, align 4
  %and13 = and i32 %14, 16711935
  %or = or i32 %and9, %and13
  %arrayidx14 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 0
  store i32 %or, ptr %arrayidx14, align 16
  %add = add i32 %xor7, %or
  %add15 = add i32 %add, 1518500249
  %arrayidx17 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %15 = load i32, ptr %arrayidx17, align 16
  %16 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %15) #1, !srcloc !8
  store i32 %16, ptr %y16, align 4
  %17 = load i32, ptr %y16, align 4
  store i32 %17, ptr %tmp18, align 4
  %18 = load i32, ptr %tmp18, align 4
  %add19 = add i32 %add15, %18
  %arrayidx20 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %19 = load i32, ptr %arrayidx20, align 16
  %add21 = add i32 %19, %add19
  store i32 %add21, ptr %arrayidx20, align 16
  %arrayidx23 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %20 = load i32, ptr %arrayidx23, align 4
  %21 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %20) #1, !srcloc !9
  store i32 %21, ptr %y22, align 4
  %22 = load i32, ptr %y22, align 4
  store i32 %22, ptr %tmp24, align 4
  %23 = load i32, ptr %tmp24, align 4
  %arrayidx25 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  store i32 %23, ptr %arrayidx25, align 4
  %arrayidx26 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %24 = load i32, ptr %arrayidx26, align 16
  %arrayidx27 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %25 = load i32, ptr %arrayidx27, align 4
  %arrayidx28 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %26 = load i32, ptr %arrayidx28, align 8
  %xor29 = xor i32 %25, %26
  %and30 = and i32 %24, %xor29
  %arrayidx31 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %27 = load i32, ptr %arrayidx31, align 8
  %xor32 = xor i32 %and30, %27
  %arrayidx34 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 1
  %28 = load i32, ptr %arrayidx34, align 4
  %29 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 8, i32 %28) #1, !srcloc !10
  store i32 %29, ptr %y33, align 4
  %30 = load i32, ptr %y33, align 4
  store i32 %30, ptr %tmp35, align 4
  %31 = load i32, ptr %tmp35, align 4
  %and36 = and i32 %31, -16711936
  %arrayidx38 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 1
  %32 = load i32, ptr %arrayidx38, align 4
  %33 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 8, i32 %32) #1, !srcloc !11
  store i32 %33, ptr %y37, align 4
  %34 = load i32, ptr %y37, align 4
  store i32 %34, ptr %tmp39, align 4
  %35 = load i32, ptr %tmp39, align 4
  %and40 = and i32 %35, 16711935
  %or41 = or i32 %and36, %and40
  %arrayidx42 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 1
  store i32 %or41, ptr %arrayidx42, align 4
  %add43 = add i32 %xor32, %or41
  %add44 = add i32 %add43, 1518500249
  %arrayidx46 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %36 = load i32, ptr %arrayidx46, align 16
  %37 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %36) #1, !srcloc !12
  store i32 %37, ptr %y45, align 4
  %38 = load i32, ptr %y45, align 4
  store i32 %38, ptr %tmp47, align 4
  %39 = load i32, ptr %tmp47, align 4
  %add48 = add i32 %add44, %39
  %arrayidx49 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %40 = load i32, ptr %arrayidx49, align 4
  %add50 = add i32 %40, %add48
  store i32 %add50, ptr %arrayidx49, align 4
  %arrayidx52 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %41 = load i32, ptr %arrayidx52, align 16
  %42 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %41) #1, !srcloc !13
  store i32 %42, ptr %y51, align 4
  %43 = load i32, ptr %y51, align 4
  store i32 %43, ptr %tmp53, align 4
  %44 = load i32, ptr %tmp53, align 4
  %arrayidx54 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  store i32 %44, ptr %arrayidx54, align 16
  %arrayidx55 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %45 = load i32, ptr %arrayidx55, align 16
  %arrayidx56 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %46 = load i32, ptr %arrayidx56, align 16
  %arrayidx57 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %47 = load i32, ptr %arrayidx57, align 4
  %xor58 = xor i32 %46, %47
  %and59 = and i32 %45, %xor58
  %arrayidx60 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %48 = load i32, ptr %arrayidx60, align 4
  %xor61 = xor i32 %and59, %48
  %arrayidx63 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 2
  %49 = load i32, ptr %arrayidx63, align 8
  %50 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 8, i32 %49) #1, !srcloc !14
  store i32 %50, ptr %y62, align 4
  %51 = load i32, ptr %y62, align 4
  store i32 %51, ptr %tmp64, align 4
  %52 = load i32, ptr %tmp64, align 4
  %and65 = and i32 %52, -16711936
  %arrayidx67 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 2
  %53 = load i32, ptr %arrayidx67, align 8
  %54 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 8, i32 %53) #1, !srcloc !15
  store i32 %54, ptr %y66, align 4
  %55 = load i32, ptr %y66, align 4
  store i32 %55, ptr %tmp68, align 4
  %56 = load i32, ptr %tmp68, align 4
  %and69 = and i32 %56, 16711935
  %or70 = or i32 %and65, %and69
  %arrayidx71 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 2
  store i32 %or70, ptr %arrayidx71, align 8
  %add72 = add i32 %xor61, %or70
  %add73 = add i32 %add72, 1518500249
  %arrayidx75 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %57 = load i32, ptr %arrayidx75, align 4
  %58 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %57) #1, !srcloc !16
  store i32 %58, ptr %y74, align 4
  %59 = load i32, ptr %y74, align 4
  store i32 %59, ptr %tmp76, align 4
  %60 = load i32, ptr %tmp76, align 4
  %add77 = add i32 %add73, %60
  %arrayidx78 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %61 = load i32, ptr %arrayidx78, align 8
  %add79 = add i32 %61, %add77
  store i32 %add79, ptr %arrayidx78, align 8
  %arrayidx81 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %62 = load i32, ptr %arrayidx81, align 16
  %63 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %62) #1, !srcloc !17
  store i32 %63, ptr %y80, align 4
  %64 = load i32, ptr %y80, align 4
  store i32 %64, ptr %tmp82, align 4
  %65 = load i32, ptr %tmp82, align 4
  %arrayidx83 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  store i32 %65, ptr %arrayidx83, align 16
  %arrayidx84 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %66 = load i32, ptr %arrayidx84, align 4
  %arrayidx85 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %67 = load i32, ptr %arrayidx85, align 16
  %arrayidx86 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %68 = load i32, ptr %arrayidx86, align 16
  %xor87 = xor i32 %67, %68
  %and88 = and i32 %66, %xor87
  %arrayidx89 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %69 = load i32, ptr %arrayidx89, align 16
  %xor90 = xor i32 %and88, %69
  %arrayidx92 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 3
  %70 = load i32, ptr %arrayidx92, align 4
  %71 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 8, i32 %70) #1, !srcloc !18
  store i32 %71, ptr %y91, align 4
  %72 = load i32, ptr %y91, align 4
  store i32 %72, ptr %tmp93, align 4
  %73 = load i32, ptr %tmp93, align 4
  %and94 = and i32 %73, -16711936
  %arrayidx96 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 3
  %74 = load i32, ptr %arrayidx96, align 4
  %75 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 8, i32 %74) #1, !srcloc !19
  store i32 %75, ptr %y95, align 4
  %76 = load i32, ptr %y95, align 4
  store i32 %76, ptr %tmp97, align 4
  %77 = load i32, ptr %tmp97, align 4
  %and98 = and i32 %77, 16711935
  %or99 = or i32 %and94, %and98
  %arrayidx100 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 3
  store i32 %or99, ptr %arrayidx100, align 4
  %add101 = add i32 %xor90, %or99
  %add102 = add i32 %add101, 1518500249
  %arrayidx104 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %78 = load i32, ptr %arrayidx104, align 8
  %79 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %78) #1, !srcloc !20
  store i32 %79, ptr %y103, align 4
  %80 = load i32, ptr %y103, align 4
  store i32 %80, ptr %tmp105, align 4
  %81 = load i32, ptr %tmp105, align 4
  %add106 = add i32 %add102, %81
  %arrayidx107 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %82 = load i32, ptr %arrayidx107, align 4
  %add108 = add i32 %82, %add106
  store i32 %add108, ptr %arrayidx107, align 4
  %arrayidx110 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %83 = load i32, ptr %arrayidx110, align 4
  %84 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %83) #1, !srcloc !21
  store i32 %84, ptr %y109, align 4
  %85 = load i32, ptr %y109, align 4
  store i32 %85, ptr %tmp111, align 4
  %86 = load i32, ptr %tmp111, align 4
  %arrayidx112 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  store i32 %86, ptr %arrayidx112, align 4
  %arrayidx113 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %87 = load i32, ptr %arrayidx113, align 8
  %arrayidx114 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %88 = load i32, ptr %arrayidx114, align 4
  %arrayidx115 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %89 = load i32, ptr %arrayidx115, align 16
  %xor116 = xor i32 %88, %89
  %and117 = and i32 %87, %xor116
  %arrayidx118 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %90 = load i32, ptr %arrayidx118, align 16
  %xor119 = xor i32 %and117, %90
  %arrayidx121 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 4
  %91 = load i32, ptr %arrayidx121, align 16
  %92 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 8, i32 %91) #1, !srcloc !22
  store i32 %92, ptr %y120, align 4
  %93 = load i32, ptr %y120, align 4
  store i32 %93, ptr %tmp122, align 4
  %94 = load i32, ptr %tmp122, align 4
  %and123 = and i32 %94, -16711936
  %arrayidx125 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 4
  %95 = load i32, ptr %arrayidx125, align 16
  %96 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 8, i32 %95) #1, !srcloc !23
  store i32 %96, ptr %y124, align 4
  %97 = load i32, ptr %y124, align 4
  store i32 %97, ptr %tmp126, align 4
  %98 = load i32, ptr %tmp126, align 4
  %and127 = and i32 %98, 16711935
  %or128 = or i32 %and123, %and127
  %arrayidx129 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 4
  store i32 %or128, ptr %arrayidx129, align 16
  %add130 = add i32 %xor119, %or128
  %add131 = add i32 %add130, 1518500249
  %arrayidx133 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %99 = load i32, ptr %arrayidx133, align 4
  %100 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %99) #1, !srcloc !24
  store i32 %100, ptr %y132, align 4
  %101 = load i32, ptr %y132, align 4
  store i32 %101, ptr %tmp134, align 4
  %102 = load i32, ptr %tmp134, align 4
  %add135 = add i32 %add131, %102
  %arrayidx136 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %103 = load i32, ptr %arrayidx136, align 16
  %add137 = add i32 %103, %add135
  store i32 %add137, ptr %arrayidx136, align 16
  %arrayidx139 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %104 = load i32, ptr %arrayidx139, align 8
  %105 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %104) #1, !srcloc !25
  store i32 %105, ptr %y138, align 4
  %106 = load i32, ptr %y138, align 4
  store i32 %106, ptr %tmp140, align 4
  %107 = load i32, ptr %tmp140, align 4
  %arrayidx141 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  store i32 %107, ptr %arrayidx141, align 8
  %arrayidx142 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %108 = load i32, ptr %arrayidx142, align 4
  %arrayidx143 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %109 = load i32, ptr %arrayidx143, align 8
  %arrayidx144 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %110 = load i32, ptr %arrayidx144, align 4
  %xor145 = xor i32 %109, %110
  %and146 = and i32 %108, %xor145
  %arrayidx147 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %111 = load i32, ptr %arrayidx147, align 4
  %xor148 = xor i32 %and146, %111
  %arrayidx150 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 5
  %112 = load i32, ptr %arrayidx150, align 4
  %113 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 8, i32 %112) #1, !srcloc !26
  store i32 %113, ptr %y149, align 4
  %114 = load i32, ptr %y149, align 4
  store i32 %114, ptr %tmp151, align 4
  %115 = load i32, ptr %tmp151, align 4
  %and152 = and i32 %115, -16711936
  %arrayidx154 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 5
  %116 = load i32, ptr %arrayidx154, align 4
  %117 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 8, i32 %116) #1, !srcloc !27
  store i32 %117, ptr %y153, align 4
  %118 = load i32, ptr %y153, align 4
  store i32 %118, ptr %tmp155, align 4
  %119 = load i32, ptr %tmp155, align 4
  %and156 = and i32 %119, 16711935
  %or157 = or i32 %and152, %and156
  %arrayidx158 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 5
  store i32 %or157, ptr %arrayidx158, align 4
  %add159 = add i32 %xor148, %or157
  %add160 = add i32 %add159, 1518500249
  %arrayidx162 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %120 = load i32, ptr %arrayidx162, align 16
  %121 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %120) #1, !srcloc !28
  store i32 %121, ptr %y161, align 4
  %122 = load i32, ptr %y161, align 4
  store i32 %122, ptr %tmp163, align 4
  %123 = load i32, ptr %tmp163, align 4
  %add164 = add i32 %add160, %123
  %arrayidx165 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %124 = load i32, ptr %arrayidx165, align 16
  %add166 = add i32 %124, %add164
  store i32 %add166, ptr %arrayidx165, align 16
  %arrayidx168 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %125 = load i32, ptr %arrayidx168, align 4
  %126 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %125) #1, !srcloc !29
  store i32 %126, ptr %y167, align 4
  %127 = load i32, ptr %y167, align 4
  store i32 %127, ptr %tmp169, align 4
  %128 = load i32, ptr %tmp169, align 4
  %arrayidx170 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  store i32 %128, ptr %arrayidx170, align 4
  %arrayidx171 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %129 = load i32, ptr %arrayidx171, align 16
  %arrayidx172 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %130 = load i32, ptr %arrayidx172, align 4
  %arrayidx173 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %131 = load i32, ptr %arrayidx173, align 8
  %xor174 = xor i32 %130, %131
  %and175 = and i32 %129, %xor174
  %arrayidx176 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %132 = load i32, ptr %arrayidx176, align 8
  %xor177 = xor i32 %and175, %132
  %arrayidx179 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 6
  %133 = load i32, ptr %arrayidx179, align 8
  %134 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 8, i32 %133) #1, !srcloc !30
  store i32 %134, ptr %y178, align 4
  %135 = load i32, ptr %y178, align 4
  store i32 %135, ptr %tmp180, align 4
  %136 = load i32, ptr %tmp180, align 4
  %and181 = and i32 %136, -16711936
  %arrayidx183 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 6
  %137 = load i32, ptr %arrayidx183, align 8
  %138 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 8, i32 %137) #1, !srcloc !31
  store i32 %138, ptr %y182, align 4
  %139 = load i32, ptr %y182, align 4
  store i32 %139, ptr %tmp184, align 4
  %140 = load i32, ptr %tmp184, align 4
  %and185 = and i32 %140, 16711935
  %or186 = or i32 %and181, %and185
  %arrayidx187 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 6
  store i32 %or186, ptr %arrayidx187, align 8
  %add188 = add i32 %xor177, %or186
  %add189 = add i32 %add188, 1518500249
  %arrayidx191 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %141 = load i32, ptr %arrayidx191, align 16
  %142 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %141) #1, !srcloc !32
  store i32 %142, ptr %y190, align 4
  %143 = load i32, ptr %y190, align 4
  store i32 %143, ptr %tmp192, align 4
  %144 = load i32, ptr %tmp192, align 4
  %add193 = add i32 %add189, %144
  %arrayidx194 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %145 = load i32, ptr %arrayidx194, align 4
  %add195 = add i32 %145, %add193
  store i32 %add195, ptr %arrayidx194, align 4
  %arrayidx197 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %146 = load i32, ptr %arrayidx197, align 16
  %147 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %146) #1, !srcloc !33
  store i32 %147, ptr %y196, align 4
  %148 = load i32, ptr %y196, align 4
  store i32 %148, ptr %tmp198, align 4
  %149 = load i32, ptr %tmp198, align 4
  %arrayidx199 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  store i32 %149, ptr %arrayidx199, align 16
  %arrayidx200 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %150 = load i32, ptr %arrayidx200, align 16
  %arrayidx201 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %151 = load i32, ptr %arrayidx201, align 16
  %arrayidx202 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %152 = load i32, ptr %arrayidx202, align 4
  %xor203 = xor i32 %151, %152
  %and204 = and i32 %150, %xor203
  %arrayidx205 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %153 = load i32, ptr %arrayidx205, align 4
  %xor206 = xor i32 %and204, %153
  %arrayidx208 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 7
  %154 = load i32, ptr %arrayidx208, align 4
  %155 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 8, i32 %154) #1, !srcloc !34
  store i32 %155, ptr %y207, align 4
  %156 = load i32, ptr %y207, align 4
  store i32 %156, ptr %tmp209, align 4
  %157 = load i32, ptr %tmp209, align 4
  %and210 = and i32 %157, -16711936
  %arrayidx212 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 7
  %158 = load i32, ptr %arrayidx212, align 4
  %159 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 8, i32 %158) #1, !srcloc !35
  store i32 %159, ptr %y211, align 4
  %160 = load i32, ptr %y211, align 4
  store i32 %160, ptr %tmp213, align 4
  %161 = load i32, ptr %tmp213, align 4
  %and214 = and i32 %161, 16711935
  %or215 = or i32 %and210, %and214
  %arrayidx216 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 7
  store i32 %or215, ptr %arrayidx216, align 4
  %add217 = add i32 %xor206, %or215
  %add218 = add i32 %add217, 1518500249
  %arrayidx220 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %162 = load i32, ptr %arrayidx220, align 4
  %163 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %162) #1, !srcloc !36
  store i32 %163, ptr %y219, align 4
  %164 = load i32, ptr %y219, align 4
  store i32 %164, ptr %tmp221, align 4
  %165 = load i32, ptr %tmp221, align 4
  %add222 = add i32 %add218, %165
  %arrayidx223 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %166 = load i32, ptr %arrayidx223, align 8
  %add224 = add i32 %166, %add222
  store i32 %add224, ptr %arrayidx223, align 8
  %arrayidx226 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %167 = load i32, ptr %arrayidx226, align 16
  %168 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %167) #1, !srcloc !37
  store i32 %168, ptr %y225, align 4
  %169 = load i32, ptr %y225, align 4
  store i32 %169, ptr %tmp227, align 4
  %170 = load i32, ptr %tmp227, align 4
  %arrayidx228 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  store i32 %170, ptr %arrayidx228, align 16
  %arrayidx229 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %171 = load i32, ptr %arrayidx229, align 4
  %arrayidx230 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %172 = load i32, ptr %arrayidx230, align 16
  %arrayidx231 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %173 = load i32, ptr %arrayidx231, align 16
  %xor232 = xor i32 %172, %173
  %and233 = and i32 %171, %xor232
  %arrayidx234 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %174 = load i32, ptr %arrayidx234, align 16
  %xor235 = xor i32 %and233, %174
  %arrayidx237 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 8
  %175 = load i32, ptr %arrayidx237, align 16
  %176 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 8, i32 %175) #1, !srcloc !38
  store i32 %176, ptr %y236, align 4
  %177 = load i32, ptr %y236, align 4
  store i32 %177, ptr %tmp238, align 4
  %178 = load i32, ptr %tmp238, align 4
  %and239 = and i32 %178, -16711936
  %arrayidx241 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 8
  %179 = load i32, ptr %arrayidx241, align 16
  %180 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 8, i32 %179) #1, !srcloc !39
  store i32 %180, ptr %y240, align 4
  %181 = load i32, ptr %y240, align 4
  store i32 %181, ptr %tmp242, align 4
  %182 = load i32, ptr %tmp242, align 4
  %and243 = and i32 %182, 16711935
  %or244 = or i32 %and239, %and243
  %arrayidx245 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 8
  store i32 %or244, ptr %arrayidx245, align 16
  %add246 = add i32 %xor235, %or244
  %add247 = add i32 %add246, 1518500249
  %arrayidx249 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %183 = load i32, ptr %arrayidx249, align 8
  %184 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %183) #1, !srcloc !40
  store i32 %184, ptr %y248, align 4
  %185 = load i32, ptr %y248, align 4
  store i32 %185, ptr %tmp250, align 4
  %186 = load i32, ptr %tmp250, align 4
  %add251 = add i32 %add247, %186
  %arrayidx252 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %187 = load i32, ptr %arrayidx252, align 4
  %add253 = add i32 %187, %add251
  store i32 %add253, ptr %arrayidx252, align 4
  %arrayidx255 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %188 = load i32, ptr %arrayidx255, align 4
  %189 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %188) #1, !srcloc !41
  store i32 %189, ptr %y254, align 4
  %190 = load i32, ptr %y254, align 4
  store i32 %190, ptr %tmp256, align 4
  %191 = load i32, ptr %tmp256, align 4
  %arrayidx257 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  store i32 %191, ptr %arrayidx257, align 4
  %arrayidx258 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %192 = load i32, ptr %arrayidx258, align 8
  %arrayidx259 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %193 = load i32, ptr %arrayidx259, align 4
  %arrayidx260 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %194 = load i32, ptr %arrayidx260, align 16
  %xor261 = xor i32 %193, %194
  %and262 = and i32 %192, %xor261
  %arrayidx263 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %195 = load i32, ptr %arrayidx263, align 16
  %xor264 = xor i32 %and262, %195
  %arrayidx266 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 9
  %196 = load i32, ptr %arrayidx266, align 4
  %197 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 8, i32 %196) #1, !srcloc !42
  store i32 %197, ptr %y265, align 4
  %198 = load i32, ptr %y265, align 4
  store i32 %198, ptr %tmp267, align 4
  %199 = load i32, ptr %tmp267, align 4
  %and268 = and i32 %199, -16711936
  %arrayidx270 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 9
  %200 = load i32, ptr %arrayidx270, align 4
  %201 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 8, i32 %200) #1, !srcloc !43
  store i32 %201, ptr %y269, align 4
  %202 = load i32, ptr %y269, align 4
  store i32 %202, ptr %tmp271, align 4
  %203 = load i32, ptr %tmp271, align 4
  %and272 = and i32 %203, 16711935
  %or273 = or i32 %and268, %and272
  %arrayidx274 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 9
  store i32 %or273, ptr %arrayidx274, align 4
  %add275 = add i32 %xor264, %or273
  %add276 = add i32 %add275, 1518500249
  %arrayidx278 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %204 = load i32, ptr %arrayidx278, align 4
  %205 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %204) #1, !srcloc !44
  store i32 %205, ptr %y277, align 4
  %206 = load i32, ptr %y277, align 4
  store i32 %206, ptr %tmp279, align 4
  %207 = load i32, ptr %tmp279, align 4
  %add280 = add i32 %add276, %207
  %arrayidx281 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %208 = load i32, ptr %arrayidx281, align 16
  %add282 = add i32 %208, %add280
  store i32 %add282, ptr %arrayidx281, align 16
  %arrayidx284 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %209 = load i32, ptr %arrayidx284, align 8
  %210 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %209) #1, !srcloc !45
  store i32 %210, ptr %y283, align 4
  %211 = load i32, ptr %y283, align 4
  store i32 %211, ptr %tmp285, align 4
  %212 = load i32, ptr %tmp285, align 4
  %arrayidx286 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  store i32 %212, ptr %arrayidx286, align 8
  %arrayidx287 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %213 = load i32, ptr %arrayidx287, align 4
  %arrayidx288 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %214 = load i32, ptr %arrayidx288, align 8
  %arrayidx289 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %215 = load i32, ptr %arrayidx289, align 4
  %xor290 = xor i32 %214, %215
  %and291 = and i32 %213, %xor290
  %arrayidx292 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %216 = load i32, ptr %arrayidx292, align 4
  %xor293 = xor i32 %and291, %216
  %arrayidx295 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 10
  %217 = load i32, ptr %arrayidx295, align 8
  %218 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 8, i32 %217) #1, !srcloc !46
  store i32 %218, ptr %y294, align 4
  %219 = load i32, ptr %y294, align 4
  store i32 %219, ptr %tmp296, align 4
  %220 = load i32, ptr %tmp296, align 4
  %and297 = and i32 %220, -16711936
  %arrayidx299 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 10
  %221 = load i32, ptr %arrayidx299, align 8
  %222 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 8, i32 %221) #1, !srcloc !47
  store i32 %222, ptr %y298, align 4
  %223 = load i32, ptr %y298, align 4
  store i32 %223, ptr %tmp300, align 4
  %224 = load i32, ptr %tmp300, align 4
  %and301 = and i32 %224, 16711935
  %or302 = or i32 %and297, %and301
  %arrayidx303 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 10
  store i32 %or302, ptr %arrayidx303, align 8
  %add304 = add i32 %xor293, %or302
  %add305 = add i32 %add304, 1518500249
  %arrayidx307 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %225 = load i32, ptr %arrayidx307, align 16
  %226 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %225) #1, !srcloc !48
  store i32 %226, ptr %y306, align 4
  %227 = load i32, ptr %y306, align 4
  store i32 %227, ptr %tmp308, align 4
  %228 = load i32, ptr %tmp308, align 4
  %add309 = add i32 %add305, %228
  %arrayidx310 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %229 = load i32, ptr %arrayidx310, align 16
  %add311 = add i32 %229, %add309
  store i32 %add311, ptr %arrayidx310, align 16
  %arrayidx313 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %230 = load i32, ptr %arrayidx313, align 4
  %231 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %230) #1, !srcloc !49
  store i32 %231, ptr %y312, align 4
  %232 = load i32, ptr %y312, align 4
  store i32 %232, ptr %tmp314, align 4
  %233 = load i32, ptr %tmp314, align 4
  %arrayidx315 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  store i32 %233, ptr %arrayidx315, align 4
  %arrayidx316 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %234 = load i32, ptr %arrayidx316, align 16
  %arrayidx317 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %235 = load i32, ptr %arrayidx317, align 4
  %arrayidx318 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %236 = load i32, ptr %arrayidx318, align 8
  %xor319 = xor i32 %235, %236
  %and320 = and i32 %234, %xor319
  %arrayidx321 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %237 = load i32, ptr %arrayidx321, align 8
  %xor322 = xor i32 %and320, %237
  %arrayidx324 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 11
  %238 = load i32, ptr %arrayidx324, align 4
  %239 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 8, i32 %238) #1, !srcloc !50
  store i32 %239, ptr %y323, align 4
  %240 = load i32, ptr %y323, align 4
  store i32 %240, ptr %tmp325, align 4
  %241 = load i32, ptr %tmp325, align 4
  %and326 = and i32 %241, -16711936
  %arrayidx328 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 11
  %242 = load i32, ptr %arrayidx328, align 4
  %243 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 8, i32 %242) #1, !srcloc !51
  store i32 %243, ptr %y327, align 4
  %244 = load i32, ptr %y327, align 4
  store i32 %244, ptr %tmp329, align 4
  %245 = load i32, ptr %tmp329, align 4
  %and330 = and i32 %245, 16711935
  %or331 = or i32 %and326, %and330
  %arrayidx332 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 11
  store i32 %or331, ptr %arrayidx332, align 4
  %add333 = add i32 %xor322, %or331
  %add334 = add i32 %add333, 1518500249
  %arrayidx336 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %246 = load i32, ptr %arrayidx336, align 16
  %247 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %246) #1, !srcloc !52
  store i32 %247, ptr %y335, align 4
  %248 = load i32, ptr %y335, align 4
  store i32 %248, ptr %tmp337, align 4
  %249 = load i32, ptr %tmp337, align 4
  %add338 = add i32 %add334, %249
  %arrayidx339 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %250 = load i32, ptr %arrayidx339, align 4
  %add340 = add i32 %250, %add338
  store i32 %add340, ptr %arrayidx339, align 4
  %arrayidx342 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %251 = load i32, ptr %arrayidx342, align 16
  %252 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %251) #1, !srcloc !53
  store i32 %252, ptr %y341, align 4
  %253 = load i32, ptr %y341, align 4
  store i32 %253, ptr %tmp343, align 4
  %254 = load i32, ptr %tmp343, align 4
  %arrayidx344 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  store i32 %254, ptr %arrayidx344, align 16
  %arrayidx345 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %255 = load i32, ptr %arrayidx345, align 16
  %arrayidx346 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %256 = load i32, ptr %arrayidx346, align 16
  %arrayidx347 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %257 = load i32, ptr %arrayidx347, align 4
  %xor348 = xor i32 %256, %257
  %and349 = and i32 %255, %xor348
  %arrayidx350 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %258 = load i32, ptr %arrayidx350, align 4
  %xor351 = xor i32 %and349, %258
  %arrayidx353 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 12
  %259 = load i32, ptr %arrayidx353, align 16
  %260 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 8, i32 %259) #1, !srcloc !54
  store i32 %260, ptr %y352, align 4
  %261 = load i32, ptr %y352, align 4
  store i32 %261, ptr %tmp354, align 4
  %262 = load i32, ptr %tmp354, align 4
  %and355 = and i32 %262, -16711936
  %arrayidx357 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 12
  %263 = load i32, ptr %arrayidx357, align 16
  %264 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 8, i32 %263) #1, !srcloc !55
  store i32 %264, ptr %y356, align 4
  %265 = load i32, ptr %y356, align 4
  store i32 %265, ptr %tmp358, align 4
  %266 = load i32, ptr %tmp358, align 4
  %and359 = and i32 %266, 16711935
  %or360 = or i32 %and355, %and359
  %arrayidx361 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 12
  store i32 %or360, ptr %arrayidx361, align 16
  %add362 = add i32 %xor351, %or360
  %add363 = add i32 %add362, 1518500249
  %arrayidx365 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %267 = load i32, ptr %arrayidx365, align 4
  %268 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %267) #1, !srcloc !56
  store i32 %268, ptr %y364, align 4
  %269 = load i32, ptr %y364, align 4
  store i32 %269, ptr %tmp366, align 4
  %270 = load i32, ptr %tmp366, align 4
  %add367 = add i32 %add363, %270
  %arrayidx368 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %271 = load i32, ptr %arrayidx368, align 8
  %add369 = add i32 %271, %add367
  store i32 %add369, ptr %arrayidx368, align 8
  %arrayidx371 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %272 = load i32, ptr %arrayidx371, align 16
  %273 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %272) #1, !srcloc !57
  store i32 %273, ptr %y370, align 4
  %274 = load i32, ptr %y370, align 4
  store i32 %274, ptr %tmp372, align 4
  %275 = load i32, ptr %tmp372, align 4
  %arrayidx373 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  store i32 %275, ptr %arrayidx373, align 16
  %arrayidx374 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %276 = load i32, ptr %arrayidx374, align 4
  %arrayidx375 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %277 = load i32, ptr %arrayidx375, align 16
  %arrayidx376 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %278 = load i32, ptr %arrayidx376, align 16
  %xor377 = xor i32 %277, %278
  %and378 = and i32 %276, %xor377
  %arrayidx379 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %279 = load i32, ptr %arrayidx379, align 16
  %xor380 = xor i32 %and378, %279
  %arrayidx382 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 13
  %280 = load i32, ptr %arrayidx382, align 4
  %281 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 8, i32 %280) #1, !srcloc !58
  store i32 %281, ptr %y381, align 4
  %282 = load i32, ptr %y381, align 4
  store i32 %282, ptr %tmp383, align 4
  %283 = load i32, ptr %tmp383, align 4
  %and384 = and i32 %283, -16711936
  %arrayidx386 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 13
  %284 = load i32, ptr %arrayidx386, align 4
  %285 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 8, i32 %284) #1, !srcloc !59
  store i32 %285, ptr %y385, align 4
  %286 = load i32, ptr %y385, align 4
  store i32 %286, ptr %tmp387, align 4
  %287 = load i32, ptr %tmp387, align 4
  %and388 = and i32 %287, 16711935
  %or389 = or i32 %and384, %and388
  %arrayidx390 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 13
  store i32 %or389, ptr %arrayidx390, align 4
  %add391 = add i32 %xor380, %or389
  %add392 = add i32 %add391, 1518500249
  %arrayidx394 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %288 = load i32, ptr %arrayidx394, align 8
  %289 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %288) #1, !srcloc !60
  store i32 %289, ptr %y393, align 4
  %290 = load i32, ptr %y393, align 4
  store i32 %290, ptr %tmp395, align 4
  %291 = load i32, ptr %tmp395, align 4
  %add396 = add i32 %add392, %291
  %arrayidx397 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %292 = load i32, ptr %arrayidx397, align 4
  %add398 = add i32 %292, %add396
  store i32 %add398, ptr %arrayidx397, align 4
  %arrayidx400 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %293 = load i32, ptr %arrayidx400, align 4
  %294 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %293) #1, !srcloc !61
  store i32 %294, ptr %y399, align 4
  %295 = load i32, ptr %y399, align 4
  store i32 %295, ptr %tmp401, align 4
  %296 = load i32, ptr %tmp401, align 4
  %arrayidx402 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  store i32 %296, ptr %arrayidx402, align 4
  %arrayidx403 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %297 = load i32, ptr %arrayidx403, align 8
  %arrayidx404 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %298 = load i32, ptr %arrayidx404, align 4
  %arrayidx405 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %299 = load i32, ptr %arrayidx405, align 16
  %xor406 = xor i32 %298, %299
  %and407 = and i32 %297, %xor406
  %arrayidx408 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %300 = load i32, ptr %arrayidx408, align 16
  %xor409 = xor i32 %and407, %300
  %arrayidx411 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 14
  %301 = load i32, ptr %arrayidx411, align 8
  %302 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 8, i32 %301) #1, !srcloc !62
  store i32 %302, ptr %y410, align 4
  %303 = load i32, ptr %y410, align 4
  store i32 %303, ptr %tmp412, align 4
  %304 = load i32, ptr %tmp412, align 4
  %and413 = and i32 %304, -16711936
  %arrayidx415 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 14
  %305 = load i32, ptr %arrayidx415, align 8
  %306 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 8, i32 %305) #1, !srcloc !63
  store i32 %306, ptr %y414, align 4
  %307 = load i32, ptr %y414, align 4
  store i32 %307, ptr %tmp416, align 4
  %308 = load i32, ptr %tmp416, align 4
  %and417 = and i32 %308, 16711935
  %or418 = or i32 %and413, %and417
  %arrayidx419 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 14
  store i32 %or418, ptr %arrayidx419, align 8
  %add420 = add i32 %xor409, %or418
  %add421 = add i32 %add420, 1518500249
  %arrayidx423 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %309 = load i32, ptr %arrayidx423, align 4
  %310 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %309) #1, !srcloc !64
  store i32 %310, ptr %y422, align 4
  %311 = load i32, ptr %y422, align 4
  store i32 %311, ptr %tmp424, align 4
  %312 = load i32, ptr %tmp424, align 4
  %add425 = add i32 %add421, %312
  %arrayidx426 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %313 = load i32, ptr %arrayidx426, align 16
  %add427 = add i32 %313, %add425
  store i32 %add427, ptr %arrayidx426, align 16
  %arrayidx429 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %314 = load i32, ptr %arrayidx429, align 8
  %315 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %314) #1, !srcloc !65
  store i32 %315, ptr %y428, align 4
  %316 = load i32, ptr %y428, align 4
  store i32 %316, ptr %tmp430, align 4
  %317 = load i32, ptr %tmp430, align 4
  %arrayidx431 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  store i32 %317, ptr %arrayidx431, align 8
  %arrayidx432 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %318 = load i32, ptr %arrayidx432, align 4
  %arrayidx433 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %319 = load i32, ptr %arrayidx433, align 8
  %arrayidx434 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %320 = load i32, ptr %arrayidx434, align 4
  %xor435 = xor i32 %319, %320
  %and436 = and i32 %318, %xor435
  %arrayidx437 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %321 = load i32, ptr %arrayidx437, align 4
  %xor438 = xor i32 %and436, %321
  %arrayidx440 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 15
  %322 = load i32, ptr %arrayidx440, align 4
  %323 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 8, i32 %322) #1, !srcloc !66
  store i32 %323, ptr %y439, align 4
  %324 = load i32, ptr %y439, align 4
  store i32 %324, ptr %tmp441, align 4
  %325 = load i32, ptr %tmp441, align 4
  %and442 = and i32 %325, -16711936
  %arrayidx444 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 15
  %326 = load i32, ptr %arrayidx444, align 4
  %327 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 8, i32 %326) #1, !srcloc !67
  store i32 %327, ptr %y443, align 4
  %328 = load i32, ptr %y443, align 4
  store i32 %328, ptr %tmp445, align 4
  %329 = load i32, ptr %tmp445, align 4
  %and446 = and i32 %329, 16711935
  %or447 = or i32 %and442, %and446
  %arrayidx448 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 15
  store i32 %or447, ptr %arrayidx448, align 4
  %add449 = add i32 %xor438, %or447
  %add450 = add i32 %add449, 1518500249
  %arrayidx452 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %330 = load i32, ptr %arrayidx452, align 16
  %331 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %330) #1, !srcloc !68
  store i32 %331, ptr %y451, align 4
  %332 = load i32, ptr %y451, align 4
  store i32 %332, ptr %tmp453, align 4
  %333 = load i32, ptr %tmp453, align 4
  %add454 = add i32 %add450, %333
  %arrayidx455 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %334 = load i32, ptr %arrayidx455, align 16
  %add456 = add i32 %334, %add454
  store i32 %add456, ptr %arrayidx455, align 16
  %arrayidx458 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %335 = load i32, ptr %arrayidx458, align 4
  %336 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %335) #1, !srcloc !69
  store i32 %336, ptr %y457, align 4
  %337 = load i32, ptr %y457, align 4
  store i32 %337, ptr %tmp459, align 4
  %338 = load i32, ptr %tmp459, align 4
  %arrayidx460 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  store i32 %338, ptr %arrayidx460, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %arrayidx461 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %339 = load i32, ptr %arrayidx461, align 4
  %arrayidx462 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %340 = load i32, ptr %arrayidx462, align 8
  %arrayidx463 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %341 = load i32, ptr %arrayidx463, align 4
  %xor464 = xor i32 %340, %341
  %and465 = and i32 %339, %xor464
  %arrayidx466 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %342 = load i32, ptr %arrayidx466, align 4
  %xor467 = xor i32 %and465, %342
  %arrayidx468 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 0
  %343 = load i32, ptr %arrayidx468, align 16
  %add469 = add i32 %xor467, %343
  %add470 = add i32 %add469, 1518500249
  %arrayidx472 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %344 = load i32, ptr %arrayidx472, align 16
  %345 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %344) #1, !srcloc !70
  store i32 %345, ptr %y471, align 4
  %346 = load i32, ptr %y471, align 4
  store i32 %346, ptr %tmp473, align 4
  %347 = load i32, ptr %tmp473, align 4
  %add474 = add i32 %add470, %347
  %arrayidx475 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %348 = load i32, ptr %arrayidx475, align 16
  %add476 = add i32 %348, %add474
  store i32 %add476, ptr %arrayidx475, align 16
  %arrayidx478 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %349 = load i32, ptr %arrayidx478, align 4
  %350 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %349) #1, !srcloc !71
  store i32 %350, ptr %y477, align 4
  %351 = load i32, ptr %y477, align 4
  store i32 %351, ptr %tmp479, align 4
  %352 = load i32, ptr %tmp479, align 4
  %arrayidx480 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  store i32 %352, ptr %arrayidx480, align 4
  %arrayidx481 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %353 = load i32, ptr %arrayidx481, align 16
  %arrayidx482 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %354 = load i32, ptr %arrayidx482, align 4
  %arrayidx483 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %355 = load i32, ptr %arrayidx483, align 8
  %xor484 = xor i32 %354, %355
  %and485 = and i32 %353, %xor484
  %arrayidx486 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %356 = load i32, ptr %arrayidx486, align 8
  %xor487 = xor i32 %and485, %356
  %arrayidx488 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 1
  %357 = load i32, ptr %arrayidx488, align 4
  %add489 = add i32 %xor487, %357
  %add490 = add i32 %add489, 1518500249
  %arrayidx492 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %358 = load i32, ptr %arrayidx492, align 16
  %359 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %358) #1, !srcloc !72
  store i32 %359, ptr %y491, align 4
  %360 = load i32, ptr %y491, align 4
  store i32 %360, ptr %tmp493, align 4
  %361 = load i32, ptr %tmp493, align 4
  %add494 = add i32 %add490, %361
  %arrayidx495 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %362 = load i32, ptr %arrayidx495, align 4
  %add496 = add i32 %362, %add494
  store i32 %add496, ptr %arrayidx495, align 4
  %arrayidx498 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %363 = load i32, ptr %arrayidx498, align 16
  %364 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %363) #1, !srcloc !73
  store i32 %364, ptr %y497, align 4
  %365 = load i32, ptr %y497, align 4
  store i32 %365, ptr %tmp499, align 4
  %366 = load i32, ptr %tmp499, align 4
  %arrayidx500 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  store i32 %366, ptr %arrayidx500, align 16
  %arrayidx501 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %367 = load i32, ptr %arrayidx501, align 16
  %arrayidx502 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %368 = load i32, ptr %arrayidx502, align 16
  %arrayidx503 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %369 = load i32, ptr %arrayidx503, align 4
  %xor504 = xor i32 %368, %369
  %and505 = and i32 %367, %xor504
  %arrayidx506 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %370 = load i32, ptr %arrayidx506, align 4
  %xor507 = xor i32 %and505, %370
  %arrayidx508 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 2
  %371 = load i32, ptr %arrayidx508, align 8
  %add509 = add i32 %xor507, %371
  %add510 = add i32 %add509, 1518500249
  %arrayidx512 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %372 = load i32, ptr %arrayidx512, align 4
  %373 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %372) #1, !srcloc !74
  store i32 %373, ptr %y511, align 4
  %374 = load i32, ptr %y511, align 4
  store i32 %374, ptr %tmp513, align 4
  %375 = load i32, ptr %tmp513, align 4
  %add514 = add i32 %add510, %375
  %arrayidx515 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %376 = load i32, ptr %arrayidx515, align 8
  %add516 = add i32 %376, %add514
  store i32 %add516, ptr %arrayidx515, align 8
  %arrayidx518 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %377 = load i32, ptr %arrayidx518, align 16
  %378 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %377) #1, !srcloc !75
  store i32 %378, ptr %y517, align 4
  %379 = load i32, ptr %y517, align 4
  store i32 %379, ptr %tmp519, align 4
  %380 = load i32, ptr %tmp519, align 4
  %arrayidx520 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  store i32 %380, ptr %arrayidx520, align 16
  %arrayidx521 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %381 = load i32, ptr %arrayidx521, align 4
  %arrayidx522 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %382 = load i32, ptr %arrayidx522, align 16
  %arrayidx523 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %383 = load i32, ptr %arrayidx523, align 16
  %xor524 = xor i32 %382, %383
  %and525 = and i32 %381, %xor524
  %arrayidx526 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %384 = load i32, ptr %arrayidx526, align 16
  %xor527 = xor i32 %and525, %384
  %arrayidx528 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 3
  %385 = load i32, ptr %arrayidx528, align 4
  %add529 = add i32 %xor527, %385
  %add530 = add i32 %add529, 1518500249
  %arrayidx532 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %386 = load i32, ptr %arrayidx532, align 8
  %387 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %386) #1, !srcloc !76
  store i32 %387, ptr %y531, align 4
  %388 = load i32, ptr %y531, align 4
  store i32 %388, ptr %tmp533, align 4
  %389 = load i32, ptr %tmp533, align 4
  %add534 = add i32 %add530, %389
  %arrayidx535 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %390 = load i32, ptr %arrayidx535, align 4
  %add536 = add i32 %390, %add534
  store i32 %add536, ptr %arrayidx535, align 4
  %arrayidx538 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %391 = load i32, ptr %arrayidx538, align 4
  %392 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %391) #1, !srcloc !77
  store i32 %392, ptr %y537, align 4
  %393 = load i32, ptr %y537, align 4
  store i32 %393, ptr %tmp539, align 4
  %394 = load i32, ptr %tmp539, align 4
  %arrayidx540 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  store i32 %394, ptr %arrayidx540, align 4
  %arrayidx541 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %395 = load i32, ptr %arrayidx541, align 8
  %arrayidx542 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %396 = load i32, ptr %arrayidx542, align 4
  %arrayidx543 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %397 = load i32, ptr %arrayidx543, align 16
  %xor544 = xor i32 %396, %397
  %and545 = and i32 %395, %xor544
  %arrayidx546 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %398 = load i32, ptr %arrayidx546, align 16
  %xor547 = xor i32 %and545, %398
  %arrayidx548 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 4
  %399 = load i32, ptr %arrayidx548, align 16
  %add549 = add i32 %xor547, %399
  %add550 = add i32 %add549, 1518500249
  %arrayidx552 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %400 = load i32, ptr %arrayidx552, align 4
  %401 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %400) #1, !srcloc !78
  store i32 %401, ptr %y551, align 4
  %402 = load i32, ptr %y551, align 4
  store i32 %402, ptr %tmp553, align 4
  %403 = load i32, ptr %tmp553, align 4
  %add554 = add i32 %add550, %403
  %arrayidx555 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %404 = load i32, ptr %arrayidx555, align 16
  %add556 = add i32 %404, %add554
  store i32 %add556, ptr %arrayidx555, align 16
  %arrayidx558 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %405 = load i32, ptr %arrayidx558, align 8
  %406 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %405) #1, !srcloc !79
  store i32 %406, ptr %y557, align 4
  %407 = load i32, ptr %y557, align 4
  store i32 %407, ptr %tmp559, align 4
  %408 = load i32, ptr %tmp559, align 4
  %arrayidx560 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  store i32 %408, ptr %arrayidx560, align 8
  %arrayidx561 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %409 = load i32, ptr %arrayidx561, align 4
  %arrayidx562 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %410 = load i32, ptr %arrayidx562, align 8
  %arrayidx563 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %411 = load i32, ptr %arrayidx563, align 4
  %xor564 = xor i32 %410, %411
  %and565 = and i32 %409, %xor564
  %arrayidx566 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %412 = load i32, ptr %arrayidx566, align 4
  %xor567 = xor i32 %and565, %412
  %arrayidx568 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 5
  %413 = load i32, ptr %arrayidx568, align 4
  %add569 = add i32 %xor567, %413
  %add570 = add i32 %add569, 1518500249
  %arrayidx572 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %414 = load i32, ptr %arrayidx572, align 16
  %415 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %414) #1, !srcloc !80
  store i32 %415, ptr %y571, align 4
  %416 = load i32, ptr %y571, align 4
  store i32 %416, ptr %tmp573, align 4
  %417 = load i32, ptr %tmp573, align 4
  %add574 = add i32 %add570, %417
  %arrayidx575 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %418 = load i32, ptr %arrayidx575, align 16
  %add576 = add i32 %418, %add574
  store i32 %add576, ptr %arrayidx575, align 16
  %arrayidx578 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %419 = load i32, ptr %arrayidx578, align 4
  %420 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %419) #1, !srcloc !81
  store i32 %420, ptr %y577, align 4
  %421 = load i32, ptr %y577, align 4
  store i32 %421, ptr %tmp579, align 4
  %422 = load i32, ptr %tmp579, align 4
  %arrayidx580 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  store i32 %422, ptr %arrayidx580, align 4
  %arrayidx581 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %423 = load i32, ptr %arrayidx581, align 16
  %arrayidx582 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %424 = load i32, ptr %arrayidx582, align 4
  %arrayidx583 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %425 = load i32, ptr %arrayidx583, align 8
  %xor584 = xor i32 %424, %425
  %and585 = and i32 %423, %xor584
  %arrayidx586 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %426 = load i32, ptr %arrayidx586, align 8
  %xor587 = xor i32 %and585, %426
  %arrayidx588 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 6
  %427 = load i32, ptr %arrayidx588, align 8
  %add589 = add i32 %xor587, %427
  %add590 = add i32 %add589, 1518500249
  %arrayidx592 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %428 = load i32, ptr %arrayidx592, align 16
  %429 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %428) #1, !srcloc !82
  store i32 %429, ptr %y591, align 4
  %430 = load i32, ptr %y591, align 4
  store i32 %430, ptr %tmp593, align 4
  %431 = load i32, ptr %tmp593, align 4
  %add594 = add i32 %add590, %431
  %arrayidx595 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %432 = load i32, ptr %arrayidx595, align 4
  %add596 = add i32 %432, %add594
  store i32 %add596, ptr %arrayidx595, align 4
  %arrayidx598 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %433 = load i32, ptr %arrayidx598, align 16
  %434 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %433) #1, !srcloc !83
  store i32 %434, ptr %y597, align 4
  %435 = load i32, ptr %y597, align 4
  store i32 %435, ptr %tmp599, align 4
  %436 = load i32, ptr %tmp599, align 4
  %arrayidx600 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  store i32 %436, ptr %arrayidx600, align 16
  %arrayidx601 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %437 = load i32, ptr %arrayidx601, align 16
  %arrayidx602 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %438 = load i32, ptr %arrayidx602, align 16
  %arrayidx603 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %439 = load i32, ptr %arrayidx603, align 4
  %xor604 = xor i32 %438, %439
  %and605 = and i32 %437, %xor604
  %arrayidx606 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %440 = load i32, ptr %arrayidx606, align 4
  %xor607 = xor i32 %and605, %440
  %arrayidx608 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 7
  %441 = load i32, ptr %arrayidx608, align 4
  %add609 = add i32 %xor607, %441
  %add610 = add i32 %add609, 1518500249
  %arrayidx612 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %442 = load i32, ptr %arrayidx612, align 4
  %443 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %442) #1, !srcloc !84
  store i32 %443, ptr %y611, align 4
  %444 = load i32, ptr %y611, align 4
  store i32 %444, ptr %tmp613, align 4
  %445 = load i32, ptr %tmp613, align 4
  %add614 = add i32 %add610, %445
  %arrayidx615 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %446 = load i32, ptr %arrayidx615, align 8
  %add616 = add i32 %446, %add614
  store i32 %add616, ptr %arrayidx615, align 8
  %arrayidx618 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %447 = load i32, ptr %arrayidx618, align 16
  %448 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %447) #1, !srcloc !85
  store i32 %448, ptr %y617, align 4
  %449 = load i32, ptr %y617, align 4
  store i32 %449, ptr %tmp619, align 4
  %450 = load i32, ptr %tmp619, align 4
  %arrayidx620 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  store i32 %450, ptr %arrayidx620, align 16
  %arrayidx621 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %451 = load i32, ptr %arrayidx621, align 4
  %arrayidx622 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %452 = load i32, ptr %arrayidx622, align 16
  %arrayidx623 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %453 = load i32, ptr %arrayidx623, align 16
  %xor624 = xor i32 %452, %453
  %and625 = and i32 %451, %xor624
  %arrayidx626 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %454 = load i32, ptr %arrayidx626, align 16
  %xor627 = xor i32 %and625, %454
  %arrayidx628 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 8
  %455 = load i32, ptr %arrayidx628, align 16
  %add629 = add i32 %xor627, %455
  %add630 = add i32 %add629, 1518500249
  %arrayidx632 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %456 = load i32, ptr %arrayidx632, align 8
  %457 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %456) #1, !srcloc !86
  store i32 %457, ptr %y631, align 4
  %458 = load i32, ptr %y631, align 4
  store i32 %458, ptr %tmp633, align 4
  %459 = load i32, ptr %tmp633, align 4
  %add634 = add i32 %add630, %459
  %arrayidx635 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %460 = load i32, ptr %arrayidx635, align 4
  %add636 = add i32 %460, %add634
  store i32 %add636, ptr %arrayidx635, align 4
  %arrayidx638 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %461 = load i32, ptr %arrayidx638, align 4
  %462 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %461) #1, !srcloc !87
  store i32 %462, ptr %y637, align 4
  %463 = load i32, ptr %y637, align 4
  store i32 %463, ptr %tmp639, align 4
  %464 = load i32, ptr %tmp639, align 4
  %arrayidx640 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  store i32 %464, ptr %arrayidx640, align 4
  %arrayidx641 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %465 = load i32, ptr %arrayidx641, align 8
  %arrayidx642 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %466 = load i32, ptr %arrayidx642, align 4
  %arrayidx643 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %467 = load i32, ptr %arrayidx643, align 16
  %xor644 = xor i32 %466, %467
  %and645 = and i32 %465, %xor644
  %arrayidx646 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %468 = load i32, ptr %arrayidx646, align 16
  %xor647 = xor i32 %and645, %468
  %arrayidx648 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 9
  %469 = load i32, ptr %arrayidx648, align 4
  %add649 = add i32 %xor647, %469
  %add650 = add i32 %add649, 1518500249
  %arrayidx652 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %470 = load i32, ptr %arrayidx652, align 4
  %471 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %470) #1, !srcloc !88
  store i32 %471, ptr %y651, align 4
  %472 = load i32, ptr %y651, align 4
  store i32 %472, ptr %tmp653, align 4
  %473 = load i32, ptr %tmp653, align 4
  %add654 = add i32 %add650, %473
  %arrayidx655 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %474 = load i32, ptr %arrayidx655, align 16
  %add656 = add i32 %474, %add654
  store i32 %add656, ptr %arrayidx655, align 16
  %arrayidx658 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %475 = load i32, ptr %arrayidx658, align 8
  %476 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %475) #1, !srcloc !89
  store i32 %476, ptr %y657, align 4
  %477 = load i32, ptr %y657, align 4
  store i32 %477, ptr %tmp659, align 4
  %478 = load i32, ptr %tmp659, align 4
  %arrayidx660 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  store i32 %478, ptr %arrayidx660, align 8
  %arrayidx661 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %479 = load i32, ptr %arrayidx661, align 4
  %arrayidx662 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %480 = load i32, ptr %arrayidx662, align 8
  %arrayidx663 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %481 = load i32, ptr %arrayidx663, align 4
  %xor664 = xor i32 %480, %481
  %and665 = and i32 %479, %xor664
  %arrayidx666 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %482 = load i32, ptr %arrayidx666, align 4
  %xor667 = xor i32 %and665, %482
  %arrayidx668 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 10
  %483 = load i32, ptr %arrayidx668, align 8
  %add669 = add i32 %xor667, %483
  %add670 = add i32 %add669, 1518500249
  %arrayidx672 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %484 = load i32, ptr %arrayidx672, align 16
  %485 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %484) #1, !srcloc !90
  store i32 %485, ptr %y671, align 4
  %486 = load i32, ptr %y671, align 4
  store i32 %486, ptr %tmp673, align 4
  %487 = load i32, ptr %tmp673, align 4
  %add674 = add i32 %add670, %487
  %arrayidx675 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %488 = load i32, ptr %arrayidx675, align 16
  %add676 = add i32 %488, %add674
  store i32 %add676, ptr %arrayidx675, align 16
  %arrayidx678 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %489 = load i32, ptr %arrayidx678, align 4
  %490 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %489) #1, !srcloc !91
  store i32 %490, ptr %y677, align 4
  %491 = load i32, ptr %y677, align 4
  store i32 %491, ptr %tmp679, align 4
  %492 = load i32, ptr %tmp679, align 4
  %arrayidx680 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  store i32 %492, ptr %arrayidx680, align 4
  %arrayidx681 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %493 = load i32, ptr %arrayidx681, align 16
  %arrayidx682 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %494 = load i32, ptr %arrayidx682, align 4
  %arrayidx683 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %495 = load i32, ptr %arrayidx683, align 8
  %xor684 = xor i32 %494, %495
  %and685 = and i32 %493, %xor684
  %arrayidx686 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %496 = load i32, ptr %arrayidx686, align 8
  %xor687 = xor i32 %and685, %496
  %arrayidx688 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 11
  %497 = load i32, ptr %arrayidx688, align 4
  %add689 = add i32 %xor687, %497
  %add690 = add i32 %add689, 1518500249
  %arrayidx692 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %498 = load i32, ptr %arrayidx692, align 16
  %499 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %498) #1, !srcloc !92
  store i32 %499, ptr %y691, align 4
  %500 = load i32, ptr %y691, align 4
  store i32 %500, ptr %tmp693, align 4
  %501 = load i32, ptr %tmp693, align 4
  %add694 = add i32 %add690, %501
  %arrayidx695 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %502 = load i32, ptr %arrayidx695, align 4
  %add696 = add i32 %502, %add694
  store i32 %add696, ptr %arrayidx695, align 4
  %arrayidx698 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %503 = load i32, ptr %arrayidx698, align 16
  %504 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %503) #1, !srcloc !93
  store i32 %504, ptr %y697, align 4
  %505 = load i32, ptr %y697, align 4
  store i32 %505, ptr %tmp699, align 4
  %506 = load i32, ptr %tmp699, align 4
  %arrayidx700 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  store i32 %506, ptr %arrayidx700, align 16
  %arrayidx701 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %507 = load i32, ptr %arrayidx701, align 16
  %arrayidx702 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %508 = load i32, ptr %arrayidx702, align 16
  %arrayidx703 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %509 = load i32, ptr %arrayidx703, align 4
  %xor704 = xor i32 %508, %509
  %and705 = and i32 %507, %xor704
  %arrayidx706 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %510 = load i32, ptr %arrayidx706, align 4
  %xor707 = xor i32 %and705, %510
  %arrayidx708 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 12
  %511 = load i32, ptr %arrayidx708, align 16
  %add709 = add i32 %xor707, %511
  %add710 = add i32 %add709, 1518500249
  %arrayidx712 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %512 = load i32, ptr %arrayidx712, align 4
  %513 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %512) #1, !srcloc !94
  store i32 %513, ptr %y711, align 4
  %514 = load i32, ptr %y711, align 4
  store i32 %514, ptr %tmp713, align 4
  %515 = load i32, ptr %tmp713, align 4
  %add714 = add i32 %add710, %515
  %arrayidx715 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %516 = load i32, ptr %arrayidx715, align 8
  %add716 = add i32 %516, %add714
  store i32 %add716, ptr %arrayidx715, align 8
  %arrayidx718 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %517 = load i32, ptr %arrayidx718, align 16
  %518 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %517) #1, !srcloc !95
  store i32 %518, ptr %y717, align 4
  %519 = load i32, ptr %y717, align 4
  store i32 %519, ptr %tmp719, align 4
  %520 = load i32, ptr %tmp719, align 4
  %arrayidx720 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  store i32 %520, ptr %arrayidx720, align 16
  %arrayidx721 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %521 = load i32, ptr %arrayidx721, align 4
  %arrayidx722 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %522 = load i32, ptr %arrayidx722, align 16
  %arrayidx723 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %523 = load i32, ptr %arrayidx723, align 16
  %xor724 = xor i32 %522, %523
  %and725 = and i32 %521, %xor724
  %arrayidx726 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %524 = load i32, ptr %arrayidx726, align 16
  %xor727 = xor i32 %and725, %524
  %arrayidx728 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 13
  %525 = load i32, ptr %arrayidx728, align 4
  %add729 = add i32 %xor727, %525
  %add730 = add i32 %add729, 1518500249
  %arrayidx732 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %526 = load i32, ptr %arrayidx732, align 8
  %527 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %526) #1, !srcloc !96
  store i32 %527, ptr %y731, align 4
  %528 = load i32, ptr %y731, align 4
  store i32 %528, ptr %tmp733, align 4
  %529 = load i32, ptr %tmp733, align 4
  %add734 = add i32 %add730, %529
  %arrayidx735 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %530 = load i32, ptr %arrayidx735, align 4
  %add736 = add i32 %530, %add734
  store i32 %add736, ptr %arrayidx735, align 4
  %arrayidx738 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %531 = load i32, ptr %arrayidx738, align 4
  %532 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %531) #1, !srcloc !97
  store i32 %532, ptr %y737, align 4
  %533 = load i32, ptr %y737, align 4
  store i32 %533, ptr %tmp739, align 4
  %534 = load i32, ptr %tmp739, align 4
  %arrayidx740 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  store i32 %534, ptr %arrayidx740, align 4
  %arrayidx741 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %535 = load i32, ptr %arrayidx741, align 8
  %arrayidx742 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %536 = load i32, ptr %arrayidx742, align 4
  %arrayidx743 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %537 = load i32, ptr %arrayidx743, align 16
  %xor744 = xor i32 %536, %537
  %and745 = and i32 %535, %xor744
  %arrayidx746 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %538 = load i32, ptr %arrayidx746, align 16
  %xor747 = xor i32 %and745, %538
  %arrayidx748 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 14
  %539 = load i32, ptr %arrayidx748, align 8
  %add749 = add i32 %xor747, %539
  %add750 = add i32 %add749, 1518500249
  %arrayidx752 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %540 = load i32, ptr %arrayidx752, align 4
  %541 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %540) #1, !srcloc !98
  store i32 %541, ptr %y751, align 4
  %542 = load i32, ptr %y751, align 4
  store i32 %542, ptr %tmp753, align 4
  %543 = load i32, ptr %tmp753, align 4
  %add754 = add i32 %add750, %543
  %arrayidx755 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %544 = load i32, ptr %arrayidx755, align 16
  %add756 = add i32 %544, %add754
  store i32 %add756, ptr %arrayidx755, align 16
  %arrayidx758 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %545 = load i32, ptr %arrayidx758, align 8
  %546 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %545) #1, !srcloc !99
  store i32 %546, ptr %y757, align 4
  %547 = load i32, ptr %y757, align 4
  store i32 %547, ptr %tmp759, align 4
  %548 = load i32, ptr %tmp759, align 4
  %arrayidx760 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  store i32 %548, ptr %arrayidx760, align 8
  %arrayidx761 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %549 = load i32, ptr %arrayidx761, align 4
  %arrayidx762 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %550 = load i32, ptr %arrayidx762, align 8
  %arrayidx763 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %551 = load i32, ptr %arrayidx763, align 4
  %xor764 = xor i32 %550, %551
  %and765 = and i32 %549, %xor764
  %arrayidx766 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %552 = load i32, ptr %arrayidx766, align 4
  %xor767 = xor i32 %and765, %552
  %arrayidx768 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 15
  %553 = load i32, ptr %arrayidx768, align 4
  %add769 = add i32 %xor767, %553
  %add770 = add i32 %add769, 1518500249
  %arrayidx772 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %554 = load i32, ptr %arrayidx772, align 16
  %555 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %554) #1, !srcloc !100
  store i32 %555, ptr %y771, align 4
  %556 = load i32, ptr %y771, align 4
  store i32 %556, ptr %tmp773, align 4
  %557 = load i32, ptr %tmp773, align 4
  %add774 = add i32 %add770, %557
  %arrayidx775 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %558 = load i32, ptr %arrayidx775, align 16
  %add776 = add i32 %558, %add774
  store i32 %add776, ptr %arrayidx775, align 16
  %arrayidx778 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %559 = load i32, ptr %arrayidx778, align 4
  %560 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %559) #1, !srcloc !101
  store i32 %560, ptr %y777, align 4
  %561 = load i32, ptr %y777, align 4
  store i32 %561, ptr %tmp779, align 4
  %562 = load i32, ptr %tmp779, align 4
  %arrayidx780 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  store i32 %562, ptr %arrayidx780, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %arrayidx781 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %563 = load i32, ptr %arrayidx781, align 16
  %arrayidx782 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %564 = load i32, ptr %arrayidx782, align 4
  %arrayidx783 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %565 = load i32, ptr %arrayidx783, align 8
  %xor784 = xor i32 %564, %565
  %and785 = and i32 %563, %xor784
  %arrayidx786 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %566 = load i32, ptr %arrayidx786, align 8
  %xor787 = xor i32 %and785, %566
  %arrayidx789 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 13
  %567 = load i32, ptr %arrayidx789, align 4
  %arrayidx790 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 8
  %568 = load i32, ptr %arrayidx790, align 16
  %xor791 = xor i32 %567, %568
  %arrayidx792 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 2
  %569 = load i32, ptr %arrayidx792, align 8
  %xor793 = xor i32 %xor791, %569
  %arrayidx794 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 0
  %570 = load i32, ptr %arrayidx794, align 16
  %xor795 = xor i32 %xor793, %570
  %571 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 1, i32 %xor795) #1, !srcloc !102
  store i32 %571, ptr %y788, align 4
  %572 = load i32, ptr %y788, align 4
  store i32 %572, ptr %tmp796, align 4
  %573 = load i32, ptr %tmp796, align 4
  %arrayidx797 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 0
  store i32 %573, ptr %arrayidx797, align 16
  %add798 = add i32 %xor787, %573
  %add799 = add i32 %add798, 1518500249
  %arrayidx801 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %574 = load i32, ptr %arrayidx801, align 16
  %575 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %574) #1, !srcloc !103
  store i32 %575, ptr %y800, align 4
  %576 = load i32, ptr %y800, align 4
  store i32 %576, ptr %tmp802, align 4
  %577 = load i32, ptr %tmp802, align 4
  %add803 = add i32 %add799, %577
  %arrayidx804 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %578 = load i32, ptr %arrayidx804, align 4
  %add805 = add i32 %578, %add803
  store i32 %add805, ptr %arrayidx804, align 4
  %arrayidx807 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %579 = load i32, ptr %arrayidx807, align 16
  %580 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %579) #1, !srcloc !104
  store i32 %580, ptr %y806, align 4
  %581 = load i32, ptr %y806, align 4
  store i32 %581, ptr %tmp808, align 4
  %582 = load i32, ptr %tmp808, align 4
  %arrayidx809 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  store i32 %582, ptr %arrayidx809, align 16
  %arrayidx810 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %583 = load i32, ptr %arrayidx810, align 16
  %arrayidx811 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %584 = load i32, ptr %arrayidx811, align 16
  %arrayidx812 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %585 = load i32, ptr %arrayidx812, align 4
  %xor813 = xor i32 %584, %585
  %and814 = and i32 %583, %xor813
  %arrayidx815 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %586 = load i32, ptr %arrayidx815, align 4
  %xor816 = xor i32 %and814, %586
  %arrayidx818 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 14
  %587 = load i32, ptr %arrayidx818, align 8
  %arrayidx819 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 9
  %588 = load i32, ptr %arrayidx819, align 4
  %xor820 = xor i32 %587, %588
  %arrayidx821 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 3
  %589 = load i32, ptr %arrayidx821, align 4
  %xor822 = xor i32 %xor820, %589
  %arrayidx823 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 1
  %590 = load i32, ptr %arrayidx823, align 4
  %xor824 = xor i32 %xor822, %590
  %591 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 1, i32 %xor824) #1, !srcloc !105
  store i32 %591, ptr %y817, align 4
  %592 = load i32, ptr %y817, align 4
  store i32 %592, ptr %tmp825, align 4
  %593 = load i32, ptr %tmp825, align 4
  %arrayidx826 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 1
  store i32 %593, ptr %arrayidx826, align 4
  %add827 = add i32 %xor816, %593
  %add828 = add i32 %add827, 1518500249
  %arrayidx830 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %594 = load i32, ptr %arrayidx830, align 4
  %595 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %594) #1, !srcloc !106
  store i32 %595, ptr %y829, align 4
  %596 = load i32, ptr %y829, align 4
  store i32 %596, ptr %tmp831, align 4
  %597 = load i32, ptr %tmp831, align 4
  %add832 = add i32 %add828, %597
  %arrayidx833 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %598 = load i32, ptr %arrayidx833, align 8
  %add834 = add i32 %598, %add832
  store i32 %add834, ptr %arrayidx833, align 8
  %arrayidx836 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %599 = load i32, ptr %arrayidx836, align 16
  %600 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %599) #1, !srcloc !107
  store i32 %600, ptr %y835, align 4
  %601 = load i32, ptr %y835, align 4
  store i32 %601, ptr %tmp837, align 4
  %602 = load i32, ptr %tmp837, align 4
  %arrayidx838 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  store i32 %602, ptr %arrayidx838, align 16
  %arrayidx839 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %603 = load i32, ptr %arrayidx839, align 4
  %arrayidx840 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %604 = load i32, ptr %arrayidx840, align 16
  %arrayidx841 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %605 = load i32, ptr %arrayidx841, align 16
  %xor842 = xor i32 %604, %605
  %and843 = and i32 %603, %xor842
  %arrayidx844 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %606 = load i32, ptr %arrayidx844, align 16
  %xor845 = xor i32 %and843, %606
  %arrayidx847 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 15
  %607 = load i32, ptr %arrayidx847, align 4
  %arrayidx848 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 10
  %608 = load i32, ptr %arrayidx848, align 8
  %xor849 = xor i32 %607, %608
  %arrayidx850 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 4
  %609 = load i32, ptr %arrayidx850, align 16
  %xor851 = xor i32 %xor849, %609
  %arrayidx852 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 2
  %610 = load i32, ptr %arrayidx852, align 8
  %xor853 = xor i32 %xor851, %610
  %611 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 1, i32 %xor853) #1, !srcloc !108
  store i32 %611, ptr %y846, align 4
  %612 = load i32, ptr %y846, align 4
  store i32 %612, ptr %tmp854, align 4
  %613 = load i32, ptr %tmp854, align 4
  %arrayidx855 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 2
  store i32 %613, ptr %arrayidx855, align 8
  %add856 = add i32 %xor845, %613
  %add857 = add i32 %add856, 1518500249
  %arrayidx859 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %614 = load i32, ptr %arrayidx859, align 8
  %615 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %614) #1, !srcloc !109
  store i32 %615, ptr %y858, align 4
  %616 = load i32, ptr %y858, align 4
  store i32 %616, ptr %tmp860, align 4
  %617 = load i32, ptr %tmp860, align 4
  %add861 = add i32 %add857, %617
  %arrayidx862 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %618 = load i32, ptr %arrayidx862, align 4
  %add863 = add i32 %618, %add861
  store i32 %add863, ptr %arrayidx862, align 4
  %arrayidx865 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %619 = load i32, ptr %arrayidx865, align 4
  %620 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %619) #1, !srcloc !110
  store i32 %620, ptr %y864, align 4
  %621 = load i32, ptr %y864, align 4
  store i32 %621, ptr %tmp866, align 4
  %622 = load i32, ptr %tmp866, align 4
  %arrayidx867 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  store i32 %622, ptr %arrayidx867, align 4
  %arrayidx868 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %623 = load i32, ptr %arrayidx868, align 8
  %arrayidx869 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %624 = load i32, ptr %arrayidx869, align 4
  %arrayidx870 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %625 = load i32, ptr %arrayidx870, align 16
  %xor871 = xor i32 %624, %625
  %and872 = and i32 %623, %xor871
  %arrayidx873 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %626 = load i32, ptr %arrayidx873, align 16
  %xor874 = xor i32 %and872, %626
  %arrayidx876 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 0
  %627 = load i32, ptr %arrayidx876, align 16
  %arrayidx877 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 11
  %628 = load i32, ptr %arrayidx877, align 4
  %xor878 = xor i32 %627, %628
  %arrayidx879 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 5
  %629 = load i32, ptr %arrayidx879, align 4
  %xor880 = xor i32 %xor878, %629
  %arrayidx881 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 3
  %630 = load i32, ptr %arrayidx881, align 4
  %xor882 = xor i32 %xor880, %630
  %631 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 1, i32 %xor882) #1, !srcloc !111
  store i32 %631, ptr %y875, align 4
  %632 = load i32, ptr %y875, align 4
  store i32 %632, ptr %tmp883, align 4
  %633 = load i32, ptr %tmp883, align 4
  %arrayidx884 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 3
  store i32 %633, ptr %arrayidx884, align 4
  %add885 = add i32 %xor874, %633
  %add886 = add i32 %add885, 1518500249
  %arrayidx888 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %634 = load i32, ptr %arrayidx888, align 4
  %635 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %634) #1, !srcloc !112
  store i32 %635, ptr %y887, align 4
  %636 = load i32, ptr %y887, align 4
  store i32 %636, ptr %tmp889, align 4
  %637 = load i32, ptr %tmp889, align 4
  %add890 = add i32 %add886, %637
  %arrayidx891 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %638 = load i32, ptr %arrayidx891, align 16
  %add892 = add i32 %638, %add890
  store i32 %add892, ptr %arrayidx891, align 16
  %arrayidx894 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %639 = load i32, ptr %arrayidx894, align 8
  %640 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %639) #1, !srcloc !113
  store i32 %640, ptr %y893, align 4
  %641 = load i32, ptr %y893, align 4
  store i32 %641, ptr %tmp895, align 4
  %642 = load i32, ptr %tmp895, align 4
  %arrayidx896 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  store i32 %642, ptr %arrayidx896, align 8
  %arrayidx897 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %643 = load i32, ptr %arrayidx897, align 4
  %arrayidx898 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %644 = load i32, ptr %arrayidx898, align 8
  %xor899 = xor i32 %643, %644
  %arrayidx900 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %645 = load i32, ptr %arrayidx900, align 4
  %xor901 = xor i32 %xor899, %645
  %arrayidx903 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 1
  %646 = load i32, ptr %arrayidx903, align 4
  %arrayidx904 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 12
  %647 = load i32, ptr %arrayidx904, align 16
  %xor905 = xor i32 %646, %647
  %arrayidx906 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 6
  %648 = load i32, ptr %arrayidx906, align 8
  %xor907 = xor i32 %xor905, %648
  %arrayidx908 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 4
  %649 = load i32, ptr %arrayidx908, align 16
  %xor909 = xor i32 %xor907, %649
  %650 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 1, i32 %xor909) #1, !srcloc !114
  store i32 %650, ptr %y902, align 4
  %651 = load i32, ptr %y902, align 4
  store i32 %651, ptr %tmp910, align 4
  %652 = load i32, ptr %tmp910, align 4
  %arrayidx911 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 4
  store i32 %652, ptr %arrayidx911, align 16
  %add912 = add i32 %xor901, %652
  %add913 = add i32 %add912, 1859775393
  %arrayidx915 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %653 = load i32, ptr %arrayidx915, align 16
  %654 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %653) #1, !srcloc !115
  store i32 %654, ptr %y914, align 4
  %655 = load i32, ptr %y914, align 4
  store i32 %655, ptr %tmp916, align 4
  %656 = load i32, ptr %tmp916, align 4
  %add917 = add i32 %add913, %656
  %arrayidx918 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %657 = load i32, ptr %arrayidx918, align 16
  %add919 = add i32 %657, %add917
  store i32 %add919, ptr %arrayidx918, align 16
  %arrayidx921 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %658 = load i32, ptr %arrayidx921, align 4
  %659 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %658) #1, !srcloc !116
  store i32 %659, ptr %y920, align 4
  %660 = load i32, ptr %y920, align 4
  store i32 %660, ptr %tmp922, align 4
  %661 = load i32, ptr %tmp922, align 4
  %arrayidx923 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  store i32 %661, ptr %arrayidx923, align 4
  %arrayidx924 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %662 = load i32, ptr %arrayidx924, align 16
  %arrayidx925 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %663 = load i32, ptr %arrayidx925, align 4
  %xor926 = xor i32 %662, %663
  %arrayidx927 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %664 = load i32, ptr %arrayidx927, align 8
  %xor928 = xor i32 %xor926, %664
  %arrayidx930 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 2
  %665 = load i32, ptr %arrayidx930, align 8
  %arrayidx931 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 13
  %666 = load i32, ptr %arrayidx931, align 4
  %xor932 = xor i32 %665, %666
  %arrayidx933 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 7
  %667 = load i32, ptr %arrayidx933, align 4
  %xor934 = xor i32 %xor932, %667
  %arrayidx935 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 5
  %668 = load i32, ptr %arrayidx935, align 4
  %xor936 = xor i32 %xor934, %668
  %669 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 1, i32 %xor936) #1, !srcloc !117
  store i32 %669, ptr %y929, align 4
  %670 = load i32, ptr %y929, align 4
  store i32 %670, ptr %tmp937, align 4
  %671 = load i32, ptr %tmp937, align 4
  %arrayidx938 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 5
  store i32 %671, ptr %arrayidx938, align 4
  %add939 = add i32 %xor928, %671
  %add940 = add i32 %add939, 1859775393
  %arrayidx942 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %672 = load i32, ptr %arrayidx942, align 16
  %673 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %672) #1, !srcloc !118
  store i32 %673, ptr %y941, align 4
  %674 = load i32, ptr %y941, align 4
  store i32 %674, ptr %tmp943, align 4
  %675 = load i32, ptr %tmp943, align 4
  %add944 = add i32 %add940, %675
  %arrayidx945 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %676 = load i32, ptr %arrayidx945, align 4
  %add946 = add i32 %676, %add944
  store i32 %add946, ptr %arrayidx945, align 4
  %arrayidx948 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %677 = load i32, ptr %arrayidx948, align 16
  %678 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %677) #1, !srcloc !119
  store i32 %678, ptr %y947, align 4
  %679 = load i32, ptr %y947, align 4
  store i32 %679, ptr %tmp949, align 4
  %680 = load i32, ptr %tmp949, align 4
  %arrayidx950 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  store i32 %680, ptr %arrayidx950, align 16
  %arrayidx951 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %681 = load i32, ptr %arrayidx951, align 16
  %arrayidx952 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %682 = load i32, ptr %arrayidx952, align 16
  %xor953 = xor i32 %681, %682
  %arrayidx954 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %683 = load i32, ptr %arrayidx954, align 4
  %xor955 = xor i32 %xor953, %683
  %arrayidx957 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 3
  %684 = load i32, ptr %arrayidx957, align 4
  %arrayidx958 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 14
  %685 = load i32, ptr %arrayidx958, align 8
  %xor959 = xor i32 %684, %685
  %arrayidx960 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 8
  %686 = load i32, ptr %arrayidx960, align 16
  %xor961 = xor i32 %xor959, %686
  %arrayidx962 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 6
  %687 = load i32, ptr %arrayidx962, align 8
  %xor963 = xor i32 %xor961, %687
  %688 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 1, i32 %xor963) #1, !srcloc !120
  store i32 %688, ptr %y956, align 4
  %689 = load i32, ptr %y956, align 4
  store i32 %689, ptr %tmp964, align 4
  %690 = load i32, ptr %tmp964, align 4
  %arrayidx965 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 6
  store i32 %690, ptr %arrayidx965, align 8
  %add966 = add i32 %xor955, %690
  %add967 = add i32 %add966, 1859775393
  %arrayidx969 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %691 = load i32, ptr %arrayidx969, align 4
  %692 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %691) #1, !srcloc !121
  store i32 %692, ptr %y968, align 4
  %693 = load i32, ptr %y968, align 4
  store i32 %693, ptr %tmp970, align 4
  %694 = load i32, ptr %tmp970, align 4
  %add971 = add i32 %add967, %694
  %arrayidx972 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %695 = load i32, ptr %arrayidx972, align 8
  %add973 = add i32 %695, %add971
  store i32 %add973, ptr %arrayidx972, align 8
  %arrayidx975 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %696 = load i32, ptr %arrayidx975, align 16
  %697 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %696) #1, !srcloc !122
  store i32 %697, ptr %y974, align 4
  %698 = load i32, ptr %y974, align 4
  store i32 %698, ptr %tmp976, align 4
  %699 = load i32, ptr %tmp976, align 4
  %arrayidx977 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  store i32 %699, ptr %arrayidx977, align 16
  %arrayidx978 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %700 = load i32, ptr %arrayidx978, align 4
  %arrayidx979 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %701 = load i32, ptr %arrayidx979, align 16
  %xor980 = xor i32 %700, %701
  %arrayidx981 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %702 = load i32, ptr %arrayidx981, align 16
  %xor982 = xor i32 %xor980, %702
  %arrayidx984 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 4
  %703 = load i32, ptr %arrayidx984, align 16
  %arrayidx985 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 15
  %704 = load i32, ptr %arrayidx985, align 4
  %xor986 = xor i32 %703, %704
  %arrayidx987 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 9
  %705 = load i32, ptr %arrayidx987, align 4
  %xor988 = xor i32 %xor986, %705
  %arrayidx989 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 7
  %706 = load i32, ptr %arrayidx989, align 4
  %xor990 = xor i32 %xor988, %706
  %707 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 1, i32 %xor990) #1, !srcloc !123
  store i32 %707, ptr %y983, align 4
  %708 = load i32, ptr %y983, align 4
  store i32 %708, ptr %tmp991, align 4
  %709 = load i32, ptr %tmp991, align 4
  %arrayidx992 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 7
  store i32 %709, ptr %arrayidx992, align 4
  %add993 = add i32 %xor982, %709
  %add994 = add i32 %add993, 1859775393
  %arrayidx996 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %710 = load i32, ptr %arrayidx996, align 8
  %711 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %710) #1, !srcloc !124
  store i32 %711, ptr %y995, align 4
  %712 = load i32, ptr %y995, align 4
  store i32 %712, ptr %tmp997, align 4
  %713 = load i32, ptr %tmp997, align 4
  %add998 = add i32 %add994, %713
  %arrayidx999 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %714 = load i32, ptr %arrayidx999, align 4
  %add1000 = add i32 %714, %add998
  store i32 %add1000, ptr %arrayidx999, align 4
  %arrayidx1002 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %715 = load i32, ptr %arrayidx1002, align 4
  %716 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %715) #1, !srcloc !125
  store i32 %716, ptr %y1001, align 4
  %717 = load i32, ptr %y1001, align 4
  store i32 %717, ptr %tmp1003, align 4
  %718 = load i32, ptr %tmp1003, align 4
  %arrayidx1004 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  store i32 %718, ptr %arrayidx1004, align 4
  %arrayidx1005 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %719 = load i32, ptr %arrayidx1005, align 8
  %arrayidx1006 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %720 = load i32, ptr %arrayidx1006, align 4
  %xor1007 = xor i32 %719, %720
  %arrayidx1008 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %721 = load i32, ptr %arrayidx1008, align 16
  %xor1009 = xor i32 %xor1007, %721
  %arrayidx1011 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 5
  %722 = load i32, ptr %arrayidx1011, align 4
  %arrayidx1012 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 0
  %723 = load i32, ptr %arrayidx1012, align 16
  %xor1013 = xor i32 %722, %723
  %arrayidx1014 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 10
  %724 = load i32, ptr %arrayidx1014, align 8
  %xor1015 = xor i32 %xor1013, %724
  %arrayidx1016 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 8
  %725 = load i32, ptr %arrayidx1016, align 16
  %xor1017 = xor i32 %xor1015, %725
  %726 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 1, i32 %xor1017) #1, !srcloc !126
  store i32 %726, ptr %y1010, align 4
  %727 = load i32, ptr %y1010, align 4
  store i32 %727, ptr %tmp1018, align 4
  %728 = load i32, ptr %tmp1018, align 4
  %arrayidx1019 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 8
  store i32 %728, ptr %arrayidx1019, align 16
  %add1020 = add i32 %xor1009, %728
  %add1021 = add i32 %add1020, 1859775393
  %arrayidx1023 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %729 = load i32, ptr %arrayidx1023, align 4
  %730 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %729) #1, !srcloc !127
  store i32 %730, ptr %y1022, align 4
  %731 = load i32, ptr %y1022, align 4
  store i32 %731, ptr %tmp1024, align 4
  %732 = load i32, ptr %tmp1024, align 4
  %add1025 = add i32 %add1021, %732
  %arrayidx1026 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %733 = load i32, ptr %arrayidx1026, align 16
  %add1027 = add i32 %733, %add1025
  store i32 %add1027, ptr %arrayidx1026, align 16
  %arrayidx1029 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %734 = load i32, ptr %arrayidx1029, align 8
  %735 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %734) #1, !srcloc !128
  store i32 %735, ptr %y1028, align 4
  %736 = load i32, ptr %y1028, align 4
  store i32 %736, ptr %tmp1030, align 4
  %737 = load i32, ptr %tmp1030, align 4
  %arrayidx1031 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  store i32 %737, ptr %arrayidx1031, align 8
  %arrayidx1032 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %738 = load i32, ptr %arrayidx1032, align 4
  %arrayidx1033 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %739 = load i32, ptr %arrayidx1033, align 8
  %xor1034 = xor i32 %738, %739
  %arrayidx1035 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %740 = load i32, ptr %arrayidx1035, align 4
  %xor1036 = xor i32 %xor1034, %740
  %arrayidx1038 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 6
  %741 = load i32, ptr %arrayidx1038, align 8
  %arrayidx1039 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 1
  %742 = load i32, ptr %arrayidx1039, align 4
  %xor1040 = xor i32 %741, %742
  %arrayidx1041 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 11
  %743 = load i32, ptr %arrayidx1041, align 4
  %xor1042 = xor i32 %xor1040, %743
  %arrayidx1043 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 9
  %744 = load i32, ptr %arrayidx1043, align 4
  %xor1044 = xor i32 %xor1042, %744
  %745 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 1, i32 %xor1044) #1, !srcloc !129
  store i32 %745, ptr %y1037, align 4
  %746 = load i32, ptr %y1037, align 4
  store i32 %746, ptr %tmp1045, align 4
  %747 = load i32, ptr %tmp1045, align 4
  %arrayidx1046 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 9
  store i32 %747, ptr %arrayidx1046, align 4
  %add1047 = add i32 %xor1036, %747
  %add1048 = add i32 %add1047, 1859775393
  %arrayidx1050 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %748 = load i32, ptr %arrayidx1050, align 16
  %749 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %748) #1, !srcloc !130
  store i32 %749, ptr %y1049, align 4
  %750 = load i32, ptr %y1049, align 4
  store i32 %750, ptr %tmp1051, align 4
  %751 = load i32, ptr %tmp1051, align 4
  %add1052 = add i32 %add1048, %751
  %arrayidx1053 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %752 = load i32, ptr %arrayidx1053, align 16
  %add1054 = add i32 %752, %add1052
  store i32 %add1054, ptr %arrayidx1053, align 16
  %arrayidx1056 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %753 = load i32, ptr %arrayidx1056, align 4
  %754 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %753) #1, !srcloc !131
  store i32 %754, ptr %y1055, align 4
  %755 = load i32, ptr %y1055, align 4
  store i32 %755, ptr %tmp1057, align 4
  %756 = load i32, ptr %tmp1057, align 4
  %arrayidx1058 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  store i32 %756, ptr %arrayidx1058, align 4
  %arrayidx1059 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %757 = load i32, ptr %arrayidx1059, align 16
  %arrayidx1060 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %758 = load i32, ptr %arrayidx1060, align 4
  %xor1061 = xor i32 %757, %758
  %arrayidx1062 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %759 = load i32, ptr %arrayidx1062, align 8
  %xor1063 = xor i32 %xor1061, %759
  %arrayidx1065 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 7
  %760 = load i32, ptr %arrayidx1065, align 4
  %arrayidx1066 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 2
  %761 = load i32, ptr %arrayidx1066, align 8
  %xor1067 = xor i32 %760, %761
  %arrayidx1068 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 12
  %762 = load i32, ptr %arrayidx1068, align 16
  %xor1069 = xor i32 %xor1067, %762
  %arrayidx1070 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 10
  %763 = load i32, ptr %arrayidx1070, align 8
  %xor1071 = xor i32 %xor1069, %763
  %764 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 1, i32 %xor1071) #1, !srcloc !132
  store i32 %764, ptr %y1064, align 4
  %765 = load i32, ptr %y1064, align 4
  store i32 %765, ptr %tmp1072, align 4
  %766 = load i32, ptr %tmp1072, align 4
  %arrayidx1073 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 10
  store i32 %766, ptr %arrayidx1073, align 8
  %add1074 = add i32 %xor1063, %766
  %add1075 = add i32 %add1074, 1859775393
  %arrayidx1077 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %767 = load i32, ptr %arrayidx1077, align 16
  %768 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %767) #1, !srcloc !133
  store i32 %768, ptr %y1076, align 4
  %769 = load i32, ptr %y1076, align 4
  store i32 %769, ptr %tmp1078, align 4
  %770 = load i32, ptr %tmp1078, align 4
  %add1079 = add i32 %add1075, %770
  %arrayidx1080 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %771 = load i32, ptr %arrayidx1080, align 4
  %add1081 = add i32 %771, %add1079
  store i32 %add1081, ptr %arrayidx1080, align 4
  %arrayidx1083 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %772 = load i32, ptr %arrayidx1083, align 16
  %773 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %772) #1, !srcloc !134
  store i32 %773, ptr %y1082, align 4
  %774 = load i32, ptr %y1082, align 4
  store i32 %774, ptr %tmp1084, align 4
  %775 = load i32, ptr %tmp1084, align 4
  %arrayidx1085 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  store i32 %775, ptr %arrayidx1085, align 16
  %arrayidx1086 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %776 = load i32, ptr %arrayidx1086, align 16
  %arrayidx1087 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %777 = load i32, ptr %arrayidx1087, align 16
  %xor1088 = xor i32 %776, %777
  %arrayidx1089 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %778 = load i32, ptr %arrayidx1089, align 4
  %xor1090 = xor i32 %xor1088, %778
  %arrayidx1092 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 8
  %779 = load i32, ptr %arrayidx1092, align 16
  %arrayidx1093 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 3
  %780 = load i32, ptr %arrayidx1093, align 4
  %xor1094 = xor i32 %779, %780
  %arrayidx1095 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 13
  %781 = load i32, ptr %arrayidx1095, align 4
  %xor1096 = xor i32 %xor1094, %781
  %arrayidx1097 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 11
  %782 = load i32, ptr %arrayidx1097, align 4
  %xor1098 = xor i32 %xor1096, %782
  %783 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 1, i32 %xor1098) #1, !srcloc !135
  store i32 %783, ptr %y1091, align 4
  %784 = load i32, ptr %y1091, align 4
  store i32 %784, ptr %tmp1099, align 4
  %785 = load i32, ptr %tmp1099, align 4
  %arrayidx1100 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 11
  store i32 %785, ptr %arrayidx1100, align 4
  %add1101 = add i32 %xor1090, %785
  %add1102 = add i32 %add1101, 1859775393
  %arrayidx1104 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %786 = load i32, ptr %arrayidx1104, align 4
  %787 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %786) #1, !srcloc !136
  store i32 %787, ptr %y1103, align 4
  %788 = load i32, ptr %y1103, align 4
  store i32 %788, ptr %tmp1105, align 4
  %789 = load i32, ptr %tmp1105, align 4
  %add1106 = add i32 %add1102, %789
  %arrayidx1107 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %790 = load i32, ptr %arrayidx1107, align 8
  %add1108 = add i32 %790, %add1106
  store i32 %add1108, ptr %arrayidx1107, align 8
  %arrayidx1110 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %791 = load i32, ptr %arrayidx1110, align 16
  %792 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %791) #1, !srcloc !137
  store i32 %792, ptr %y1109, align 4
  %793 = load i32, ptr %y1109, align 4
  store i32 %793, ptr %tmp1111, align 4
  %794 = load i32, ptr %tmp1111, align 4
  %arrayidx1112 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  store i32 %794, ptr %arrayidx1112, align 16
  %arrayidx1113 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %795 = load i32, ptr %arrayidx1113, align 4
  %arrayidx1114 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %796 = load i32, ptr %arrayidx1114, align 16
  %xor1115 = xor i32 %795, %796
  %arrayidx1116 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %797 = load i32, ptr %arrayidx1116, align 16
  %xor1117 = xor i32 %xor1115, %797
  %arrayidx1119 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 9
  %798 = load i32, ptr %arrayidx1119, align 4
  %arrayidx1120 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 4
  %799 = load i32, ptr %arrayidx1120, align 16
  %xor1121 = xor i32 %798, %799
  %arrayidx1122 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 14
  %800 = load i32, ptr %arrayidx1122, align 8
  %xor1123 = xor i32 %xor1121, %800
  %arrayidx1124 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 12
  %801 = load i32, ptr %arrayidx1124, align 16
  %xor1125 = xor i32 %xor1123, %801
  %802 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 1, i32 %xor1125) #1, !srcloc !138
  store i32 %802, ptr %y1118, align 4
  %803 = load i32, ptr %y1118, align 4
  store i32 %803, ptr %tmp1126, align 4
  %804 = load i32, ptr %tmp1126, align 4
  %arrayidx1127 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 12
  store i32 %804, ptr %arrayidx1127, align 16
  %add1128 = add i32 %xor1117, %804
  %add1129 = add i32 %add1128, 1859775393
  %arrayidx1131 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %805 = load i32, ptr %arrayidx1131, align 8
  %806 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %805) #1, !srcloc !139
  store i32 %806, ptr %y1130, align 4
  %807 = load i32, ptr %y1130, align 4
  store i32 %807, ptr %tmp1132, align 4
  %808 = load i32, ptr %tmp1132, align 4
  %add1133 = add i32 %add1129, %808
  %arrayidx1134 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %809 = load i32, ptr %arrayidx1134, align 4
  %add1135 = add i32 %809, %add1133
  store i32 %add1135, ptr %arrayidx1134, align 4
  %arrayidx1137 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %810 = load i32, ptr %arrayidx1137, align 4
  %811 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %810) #1, !srcloc !140
  store i32 %811, ptr %y1136, align 4
  %812 = load i32, ptr %y1136, align 4
  store i32 %812, ptr %tmp1138, align 4
  %813 = load i32, ptr %tmp1138, align 4
  %arrayidx1139 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  store i32 %813, ptr %arrayidx1139, align 4
  %arrayidx1140 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %814 = load i32, ptr %arrayidx1140, align 8
  %arrayidx1141 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %815 = load i32, ptr %arrayidx1141, align 4
  %xor1142 = xor i32 %814, %815
  %arrayidx1143 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %816 = load i32, ptr %arrayidx1143, align 16
  %xor1144 = xor i32 %xor1142, %816
  %arrayidx1146 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 10
  %817 = load i32, ptr %arrayidx1146, align 8
  %arrayidx1147 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 5
  %818 = load i32, ptr %arrayidx1147, align 4
  %xor1148 = xor i32 %817, %818
  %arrayidx1149 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 15
  %819 = load i32, ptr %arrayidx1149, align 4
  %xor1150 = xor i32 %xor1148, %819
  %arrayidx1151 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 13
  %820 = load i32, ptr %arrayidx1151, align 4
  %xor1152 = xor i32 %xor1150, %820
  %821 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 1, i32 %xor1152) #1, !srcloc !141
  store i32 %821, ptr %y1145, align 4
  %822 = load i32, ptr %y1145, align 4
  store i32 %822, ptr %tmp1153, align 4
  %823 = load i32, ptr %tmp1153, align 4
  %arrayidx1154 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 13
  store i32 %823, ptr %arrayidx1154, align 4
  %add1155 = add i32 %xor1144, %823
  %add1156 = add i32 %add1155, 1859775393
  %arrayidx1158 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %824 = load i32, ptr %arrayidx1158, align 4
  %825 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %824) #1, !srcloc !142
  store i32 %825, ptr %y1157, align 4
  %826 = load i32, ptr %y1157, align 4
  store i32 %826, ptr %tmp1159, align 4
  %827 = load i32, ptr %tmp1159, align 4
  %add1160 = add i32 %add1156, %827
  %arrayidx1161 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %828 = load i32, ptr %arrayidx1161, align 16
  %add1162 = add i32 %828, %add1160
  store i32 %add1162, ptr %arrayidx1161, align 16
  %arrayidx1164 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %829 = load i32, ptr %arrayidx1164, align 8
  %830 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %829) #1, !srcloc !143
  store i32 %830, ptr %y1163, align 4
  %831 = load i32, ptr %y1163, align 4
  store i32 %831, ptr %tmp1165, align 4
  %832 = load i32, ptr %tmp1165, align 4
  %arrayidx1166 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  store i32 %832, ptr %arrayidx1166, align 8
  %arrayidx1167 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %833 = load i32, ptr %arrayidx1167, align 4
  %arrayidx1168 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %834 = load i32, ptr %arrayidx1168, align 8
  %xor1169 = xor i32 %833, %834
  %arrayidx1170 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %835 = load i32, ptr %arrayidx1170, align 4
  %xor1171 = xor i32 %xor1169, %835
  %arrayidx1173 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 11
  %836 = load i32, ptr %arrayidx1173, align 4
  %arrayidx1174 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 6
  %837 = load i32, ptr %arrayidx1174, align 8
  %xor1175 = xor i32 %836, %837
  %arrayidx1176 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 0
  %838 = load i32, ptr %arrayidx1176, align 16
  %xor1177 = xor i32 %xor1175, %838
  %arrayidx1178 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 14
  %839 = load i32, ptr %arrayidx1178, align 8
  %xor1179 = xor i32 %xor1177, %839
  %840 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 1, i32 %xor1179) #1, !srcloc !144
  store i32 %840, ptr %y1172, align 4
  %841 = load i32, ptr %y1172, align 4
  store i32 %841, ptr %tmp1180, align 4
  %842 = load i32, ptr %tmp1180, align 4
  %arrayidx1181 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 14
  store i32 %842, ptr %arrayidx1181, align 8
  %add1182 = add i32 %xor1171, %842
  %add1183 = add i32 %add1182, 1859775393
  %arrayidx1185 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %843 = load i32, ptr %arrayidx1185, align 16
  %844 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %843) #1, !srcloc !145
  store i32 %844, ptr %y1184, align 4
  %845 = load i32, ptr %y1184, align 4
  store i32 %845, ptr %tmp1186, align 4
  %846 = load i32, ptr %tmp1186, align 4
  %add1187 = add i32 %add1183, %846
  %arrayidx1188 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %847 = load i32, ptr %arrayidx1188, align 16
  %add1189 = add i32 %847, %add1187
  store i32 %add1189, ptr %arrayidx1188, align 16
  %arrayidx1191 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %848 = load i32, ptr %arrayidx1191, align 4
  %849 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %848) #1, !srcloc !146
  store i32 %849, ptr %y1190, align 4
  %850 = load i32, ptr %y1190, align 4
  store i32 %850, ptr %tmp1192, align 4
  %851 = load i32, ptr %tmp1192, align 4
  %arrayidx1193 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  store i32 %851, ptr %arrayidx1193, align 4
  %arrayidx1194 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %852 = load i32, ptr %arrayidx1194, align 16
  %arrayidx1195 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %853 = load i32, ptr %arrayidx1195, align 4
  %xor1196 = xor i32 %852, %853
  %arrayidx1197 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %854 = load i32, ptr %arrayidx1197, align 8
  %xor1198 = xor i32 %xor1196, %854
  %arrayidx1200 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 12
  %855 = load i32, ptr %arrayidx1200, align 16
  %arrayidx1201 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 7
  %856 = load i32, ptr %arrayidx1201, align 4
  %xor1202 = xor i32 %855, %856
  %arrayidx1203 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 1
  %857 = load i32, ptr %arrayidx1203, align 4
  %xor1204 = xor i32 %xor1202, %857
  %arrayidx1205 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 15
  %858 = load i32, ptr %arrayidx1205, align 4
  %xor1206 = xor i32 %xor1204, %858
  %859 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 1, i32 %xor1206) #1, !srcloc !147
  store i32 %859, ptr %y1199, align 4
  %860 = load i32, ptr %y1199, align 4
  store i32 %860, ptr %tmp1207, align 4
  %861 = load i32, ptr %tmp1207, align 4
  %arrayidx1208 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 15
  store i32 %861, ptr %arrayidx1208, align 4
  %add1209 = add i32 %xor1198, %861
  %add1210 = add i32 %add1209, 1859775393
  %arrayidx1212 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %862 = load i32, ptr %arrayidx1212, align 16
  %863 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %862) #1, !srcloc !148
  store i32 %863, ptr %y1211, align 4
  %864 = load i32, ptr %y1211, align 4
  store i32 %864, ptr %tmp1213, align 4
  %865 = load i32, ptr %tmp1213, align 4
  %add1214 = add i32 %add1210, %865
  %arrayidx1215 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %866 = load i32, ptr %arrayidx1215, align 4
  %add1216 = add i32 %866, %add1214
  store i32 %add1216, ptr %arrayidx1215, align 4
  %arrayidx1218 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %867 = load i32, ptr %arrayidx1218, align 16
  %868 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %867) #1, !srcloc !149
  store i32 %868, ptr %y1217, align 4
  %869 = load i32, ptr %y1217, align 4
  store i32 %869, ptr %tmp1219, align 4
  %870 = load i32, ptr %tmp1219, align 4
  %arrayidx1220 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  store i32 %870, ptr %arrayidx1220, align 16
  %arrayidx1221 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %871 = load i32, ptr %arrayidx1221, align 16
  %arrayidx1222 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %872 = load i32, ptr %arrayidx1222, align 16
  %xor1223 = xor i32 %871, %872
  %arrayidx1224 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %873 = load i32, ptr %arrayidx1224, align 4
  %xor1225 = xor i32 %xor1223, %873
  %arrayidx1227 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 13
  %874 = load i32, ptr %arrayidx1227, align 4
  %arrayidx1228 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 8
  %875 = load i32, ptr %arrayidx1228, align 16
  %xor1229 = xor i32 %874, %875
  %arrayidx1230 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 2
  %876 = load i32, ptr %arrayidx1230, align 8
  %xor1231 = xor i32 %xor1229, %876
  %arrayidx1232 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 0
  %877 = load i32, ptr %arrayidx1232, align 16
  %xor1233 = xor i32 %xor1231, %877
  %878 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 1, i32 %xor1233) #1, !srcloc !150
  store i32 %878, ptr %y1226, align 4
  %879 = load i32, ptr %y1226, align 4
  store i32 %879, ptr %tmp1234, align 4
  %880 = load i32, ptr %tmp1234, align 4
  %arrayidx1235 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 0
  store i32 %880, ptr %arrayidx1235, align 16
  %add1236 = add i32 %xor1225, %880
  %add1237 = add i32 %add1236, 1859775393
  %arrayidx1239 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %881 = load i32, ptr %arrayidx1239, align 4
  %882 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %881) #1, !srcloc !151
  store i32 %882, ptr %y1238, align 4
  %883 = load i32, ptr %y1238, align 4
  store i32 %883, ptr %tmp1240, align 4
  %884 = load i32, ptr %tmp1240, align 4
  %add1241 = add i32 %add1237, %884
  %arrayidx1242 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %885 = load i32, ptr %arrayidx1242, align 8
  %add1243 = add i32 %885, %add1241
  store i32 %add1243, ptr %arrayidx1242, align 8
  %arrayidx1245 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %886 = load i32, ptr %arrayidx1245, align 16
  %887 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %886) #1, !srcloc !152
  store i32 %887, ptr %y1244, align 4
  %888 = load i32, ptr %y1244, align 4
  store i32 %888, ptr %tmp1246, align 4
  %889 = load i32, ptr %tmp1246, align 4
  %arrayidx1247 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  store i32 %889, ptr %arrayidx1247, align 16
  %arrayidx1248 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %890 = load i32, ptr %arrayidx1248, align 4
  %arrayidx1249 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %891 = load i32, ptr %arrayidx1249, align 16
  %xor1250 = xor i32 %890, %891
  %arrayidx1251 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %892 = load i32, ptr %arrayidx1251, align 16
  %xor1252 = xor i32 %xor1250, %892
  %arrayidx1254 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 14
  %893 = load i32, ptr %arrayidx1254, align 8
  %arrayidx1255 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 9
  %894 = load i32, ptr %arrayidx1255, align 4
  %xor1256 = xor i32 %893, %894
  %arrayidx1257 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 3
  %895 = load i32, ptr %arrayidx1257, align 4
  %xor1258 = xor i32 %xor1256, %895
  %arrayidx1259 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 1
  %896 = load i32, ptr %arrayidx1259, align 4
  %xor1260 = xor i32 %xor1258, %896
  %897 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 1, i32 %xor1260) #1, !srcloc !153
  store i32 %897, ptr %y1253, align 4
  %898 = load i32, ptr %y1253, align 4
  store i32 %898, ptr %tmp1261, align 4
  %899 = load i32, ptr %tmp1261, align 4
  %arrayidx1262 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 1
  store i32 %899, ptr %arrayidx1262, align 4
  %add1263 = add i32 %xor1252, %899
  %add1264 = add i32 %add1263, 1859775393
  %arrayidx1266 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %900 = load i32, ptr %arrayidx1266, align 8
  %901 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %900) #1, !srcloc !154
  store i32 %901, ptr %y1265, align 4
  %902 = load i32, ptr %y1265, align 4
  store i32 %902, ptr %tmp1267, align 4
  %903 = load i32, ptr %tmp1267, align 4
  %add1268 = add i32 %add1264, %903
  %arrayidx1269 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %904 = load i32, ptr %arrayidx1269, align 4
  %add1270 = add i32 %904, %add1268
  store i32 %add1270, ptr %arrayidx1269, align 4
  %arrayidx1272 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %905 = load i32, ptr %arrayidx1272, align 4
  %906 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %905) #1, !srcloc !155
  store i32 %906, ptr %y1271, align 4
  %907 = load i32, ptr %y1271, align 4
  store i32 %907, ptr %tmp1273, align 4
  %908 = load i32, ptr %tmp1273, align 4
  %arrayidx1274 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  store i32 %908, ptr %arrayidx1274, align 4
  %arrayidx1275 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %909 = load i32, ptr %arrayidx1275, align 8
  %arrayidx1276 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %910 = load i32, ptr %arrayidx1276, align 4
  %xor1277 = xor i32 %909, %910
  %arrayidx1278 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %911 = load i32, ptr %arrayidx1278, align 16
  %xor1279 = xor i32 %xor1277, %911
  %arrayidx1281 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 15
  %912 = load i32, ptr %arrayidx1281, align 4
  %arrayidx1282 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 10
  %913 = load i32, ptr %arrayidx1282, align 8
  %xor1283 = xor i32 %912, %913
  %arrayidx1284 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 4
  %914 = load i32, ptr %arrayidx1284, align 16
  %xor1285 = xor i32 %xor1283, %914
  %arrayidx1286 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 2
  %915 = load i32, ptr %arrayidx1286, align 8
  %xor1287 = xor i32 %xor1285, %915
  %916 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 1, i32 %xor1287) #1, !srcloc !156
  store i32 %916, ptr %y1280, align 4
  %917 = load i32, ptr %y1280, align 4
  store i32 %917, ptr %tmp1288, align 4
  %918 = load i32, ptr %tmp1288, align 4
  %arrayidx1289 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 2
  store i32 %918, ptr %arrayidx1289, align 8
  %add1290 = add i32 %xor1279, %918
  %add1291 = add i32 %add1290, 1859775393
  %arrayidx1293 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %919 = load i32, ptr %arrayidx1293, align 4
  %920 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %919) #1, !srcloc !157
  store i32 %920, ptr %y1292, align 4
  %921 = load i32, ptr %y1292, align 4
  store i32 %921, ptr %tmp1294, align 4
  %922 = load i32, ptr %tmp1294, align 4
  %add1295 = add i32 %add1291, %922
  %arrayidx1296 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %923 = load i32, ptr %arrayidx1296, align 16
  %add1297 = add i32 %923, %add1295
  store i32 %add1297, ptr %arrayidx1296, align 16
  %arrayidx1299 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %924 = load i32, ptr %arrayidx1299, align 8
  %925 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %924) #1, !srcloc !158
  store i32 %925, ptr %y1298, align 4
  %926 = load i32, ptr %y1298, align 4
  store i32 %926, ptr %tmp1300, align 4
  %927 = load i32, ptr %tmp1300, align 4
  %arrayidx1301 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  store i32 %927, ptr %arrayidx1301, align 8
  %arrayidx1302 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %928 = load i32, ptr %arrayidx1302, align 4
  %arrayidx1303 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %929 = load i32, ptr %arrayidx1303, align 8
  %xor1304 = xor i32 %928, %929
  %arrayidx1305 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %930 = load i32, ptr %arrayidx1305, align 4
  %xor1306 = xor i32 %xor1304, %930
  %arrayidx1308 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 0
  %931 = load i32, ptr %arrayidx1308, align 16
  %arrayidx1309 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 11
  %932 = load i32, ptr %arrayidx1309, align 4
  %xor1310 = xor i32 %931, %932
  %arrayidx1311 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 5
  %933 = load i32, ptr %arrayidx1311, align 4
  %xor1312 = xor i32 %xor1310, %933
  %arrayidx1313 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 3
  %934 = load i32, ptr %arrayidx1313, align 4
  %xor1314 = xor i32 %xor1312, %934
  %935 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 1, i32 %xor1314) #1, !srcloc !159
  store i32 %935, ptr %y1307, align 4
  %936 = load i32, ptr %y1307, align 4
  store i32 %936, ptr %tmp1315, align 4
  %937 = load i32, ptr %tmp1315, align 4
  %arrayidx1316 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 3
  store i32 %937, ptr %arrayidx1316, align 4
  %add1317 = add i32 %xor1306, %937
  %add1318 = add i32 %add1317, 1859775393
  %arrayidx1320 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %938 = load i32, ptr %arrayidx1320, align 16
  %939 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %938) #1, !srcloc !160
  store i32 %939, ptr %y1319, align 4
  %940 = load i32, ptr %y1319, align 4
  store i32 %940, ptr %tmp1321, align 4
  %941 = load i32, ptr %tmp1321, align 4
  %add1322 = add i32 %add1318, %941
  %arrayidx1323 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %942 = load i32, ptr %arrayidx1323, align 16
  %add1324 = add i32 %942, %add1322
  store i32 %add1324, ptr %arrayidx1323, align 16
  %arrayidx1326 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %943 = load i32, ptr %arrayidx1326, align 4
  %944 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %943) #1, !srcloc !161
  store i32 %944, ptr %y1325, align 4
  %945 = load i32, ptr %y1325, align 4
  store i32 %945, ptr %tmp1327, align 4
  %946 = load i32, ptr %tmp1327, align 4
  %arrayidx1328 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  store i32 %946, ptr %arrayidx1328, align 4
  %arrayidx1329 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %947 = load i32, ptr %arrayidx1329, align 16
  %arrayidx1330 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %948 = load i32, ptr %arrayidx1330, align 4
  %xor1331 = xor i32 %947, %948
  %arrayidx1332 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %949 = load i32, ptr %arrayidx1332, align 8
  %xor1333 = xor i32 %xor1331, %949
  %arrayidx1335 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 1
  %950 = load i32, ptr %arrayidx1335, align 4
  %arrayidx1336 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 12
  %951 = load i32, ptr %arrayidx1336, align 16
  %xor1337 = xor i32 %950, %951
  %arrayidx1338 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 6
  %952 = load i32, ptr %arrayidx1338, align 8
  %xor1339 = xor i32 %xor1337, %952
  %arrayidx1340 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 4
  %953 = load i32, ptr %arrayidx1340, align 16
  %xor1341 = xor i32 %xor1339, %953
  %954 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 1, i32 %xor1341) #1, !srcloc !162
  store i32 %954, ptr %y1334, align 4
  %955 = load i32, ptr %y1334, align 4
  store i32 %955, ptr %tmp1342, align 4
  %956 = load i32, ptr %tmp1342, align 4
  %arrayidx1343 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 4
  store i32 %956, ptr %arrayidx1343, align 16
  %add1344 = add i32 %xor1333, %956
  %add1345 = add i32 %add1344, 1859775393
  %arrayidx1347 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %957 = load i32, ptr %arrayidx1347, align 16
  %958 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %957) #1, !srcloc !163
  store i32 %958, ptr %y1346, align 4
  %959 = load i32, ptr %y1346, align 4
  store i32 %959, ptr %tmp1348, align 4
  %960 = load i32, ptr %tmp1348, align 4
  %add1349 = add i32 %add1345, %960
  %arrayidx1350 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %961 = load i32, ptr %arrayidx1350, align 4
  %add1351 = add i32 %961, %add1349
  store i32 %add1351, ptr %arrayidx1350, align 4
  %arrayidx1353 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %962 = load i32, ptr %arrayidx1353, align 16
  %963 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %962) #1, !srcloc !164
  store i32 %963, ptr %y1352, align 4
  %964 = load i32, ptr %y1352, align 4
  store i32 %964, ptr %tmp1354, align 4
  %965 = load i32, ptr %tmp1354, align 4
  %arrayidx1355 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  store i32 %965, ptr %arrayidx1355, align 16
  %arrayidx1356 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %966 = load i32, ptr %arrayidx1356, align 16
  %arrayidx1357 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %967 = load i32, ptr %arrayidx1357, align 16
  %xor1358 = xor i32 %966, %967
  %arrayidx1359 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %968 = load i32, ptr %arrayidx1359, align 4
  %xor1360 = xor i32 %xor1358, %968
  %arrayidx1362 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 2
  %969 = load i32, ptr %arrayidx1362, align 8
  %arrayidx1363 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 13
  %970 = load i32, ptr %arrayidx1363, align 4
  %xor1364 = xor i32 %969, %970
  %arrayidx1365 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 7
  %971 = load i32, ptr %arrayidx1365, align 4
  %xor1366 = xor i32 %xor1364, %971
  %arrayidx1367 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 5
  %972 = load i32, ptr %arrayidx1367, align 4
  %xor1368 = xor i32 %xor1366, %972
  %973 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 1, i32 %xor1368) #1, !srcloc !165
  store i32 %973, ptr %y1361, align 4
  %974 = load i32, ptr %y1361, align 4
  store i32 %974, ptr %tmp1369, align 4
  %975 = load i32, ptr %tmp1369, align 4
  %arrayidx1370 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 5
  store i32 %975, ptr %arrayidx1370, align 4
  %add1371 = add i32 %xor1360, %975
  %add1372 = add i32 %add1371, 1859775393
  %arrayidx1374 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %976 = load i32, ptr %arrayidx1374, align 4
  %977 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %976) #1, !srcloc !166
  store i32 %977, ptr %y1373, align 4
  %978 = load i32, ptr %y1373, align 4
  store i32 %978, ptr %tmp1375, align 4
  %979 = load i32, ptr %tmp1375, align 4
  %add1376 = add i32 %add1372, %979
  %arrayidx1377 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %980 = load i32, ptr %arrayidx1377, align 8
  %add1378 = add i32 %980, %add1376
  store i32 %add1378, ptr %arrayidx1377, align 8
  %arrayidx1380 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %981 = load i32, ptr %arrayidx1380, align 16
  %982 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %981) #1, !srcloc !167
  store i32 %982, ptr %y1379, align 4
  %983 = load i32, ptr %y1379, align 4
  store i32 %983, ptr %tmp1381, align 4
  %984 = load i32, ptr %tmp1381, align 4
  %arrayidx1382 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  store i32 %984, ptr %arrayidx1382, align 16
  %arrayidx1383 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %985 = load i32, ptr %arrayidx1383, align 4
  %arrayidx1384 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %986 = load i32, ptr %arrayidx1384, align 16
  %xor1385 = xor i32 %985, %986
  %arrayidx1386 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %987 = load i32, ptr %arrayidx1386, align 16
  %xor1387 = xor i32 %xor1385, %987
  %arrayidx1389 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 3
  %988 = load i32, ptr %arrayidx1389, align 4
  %arrayidx1390 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 14
  %989 = load i32, ptr %arrayidx1390, align 8
  %xor1391 = xor i32 %988, %989
  %arrayidx1392 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 8
  %990 = load i32, ptr %arrayidx1392, align 16
  %xor1393 = xor i32 %xor1391, %990
  %arrayidx1394 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 6
  %991 = load i32, ptr %arrayidx1394, align 8
  %xor1395 = xor i32 %xor1393, %991
  %992 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 1, i32 %xor1395) #1, !srcloc !168
  store i32 %992, ptr %y1388, align 4
  %993 = load i32, ptr %y1388, align 4
  store i32 %993, ptr %tmp1396, align 4
  %994 = load i32, ptr %tmp1396, align 4
  %arrayidx1397 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 6
  store i32 %994, ptr %arrayidx1397, align 8
  %add1398 = add i32 %xor1387, %994
  %add1399 = add i32 %add1398, 1859775393
  %arrayidx1401 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %995 = load i32, ptr %arrayidx1401, align 8
  %996 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %995) #1, !srcloc !169
  store i32 %996, ptr %y1400, align 4
  %997 = load i32, ptr %y1400, align 4
  store i32 %997, ptr %tmp1402, align 4
  %998 = load i32, ptr %tmp1402, align 4
  %add1403 = add i32 %add1399, %998
  %arrayidx1404 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %999 = load i32, ptr %arrayidx1404, align 4
  %add1405 = add i32 %999, %add1403
  store i32 %add1405, ptr %arrayidx1404, align 4
  %arrayidx1407 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %1000 = load i32, ptr %arrayidx1407, align 4
  %1001 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %1000) #1, !srcloc !170
  store i32 %1001, ptr %y1406, align 4
  %1002 = load i32, ptr %y1406, align 4
  store i32 %1002, ptr %tmp1408, align 4
  %1003 = load i32, ptr %tmp1408, align 4
  %arrayidx1409 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  store i32 %1003, ptr %arrayidx1409, align 4
  %arrayidx1410 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %1004 = load i32, ptr %arrayidx1410, align 8
  %arrayidx1411 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %1005 = load i32, ptr %arrayidx1411, align 4
  %xor1412 = xor i32 %1004, %1005
  %arrayidx1413 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %1006 = load i32, ptr %arrayidx1413, align 16
  %xor1414 = xor i32 %xor1412, %1006
  %arrayidx1416 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 4
  %1007 = load i32, ptr %arrayidx1416, align 16
  %arrayidx1417 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 15
  %1008 = load i32, ptr %arrayidx1417, align 4
  %xor1418 = xor i32 %1007, %1008
  %arrayidx1419 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 9
  %1009 = load i32, ptr %arrayidx1419, align 4
  %xor1420 = xor i32 %xor1418, %1009
  %arrayidx1421 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 7
  %1010 = load i32, ptr %arrayidx1421, align 4
  %xor1422 = xor i32 %xor1420, %1010
  %1011 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 1, i32 %xor1422) #1, !srcloc !171
  store i32 %1011, ptr %y1415, align 4
  %1012 = load i32, ptr %y1415, align 4
  store i32 %1012, ptr %tmp1423, align 4
  %1013 = load i32, ptr %tmp1423, align 4
  %arrayidx1424 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 7
  store i32 %1013, ptr %arrayidx1424, align 4
  %add1425 = add i32 %xor1414, %1013
  %add1426 = add i32 %add1425, 1859775393
  %arrayidx1428 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %1014 = load i32, ptr %arrayidx1428, align 4
  %1015 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %1014) #1, !srcloc !172
  store i32 %1015, ptr %y1427, align 4
  %1016 = load i32, ptr %y1427, align 4
  store i32 %1016, ptr %tmp1429, align 4
  %1017 = load i32, ptr %tmp1429, align 4
  %add1430 = add i32 %add1426, %1017
  %arrayidx1431 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %1018 = load i32, ptr %arrayidx1431, align 16
  %add1432 = add i32 %1018, %add1430
  store i32 %add1432, ptr %arrayidx1431, align 16
  %arrayidx1434 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %1019 = load i32, ptr %arrayidx1434, align 8
  %1020 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %1019) #1, !srcloc !173
  store i32 %1020, ptr %y1433, align 4
  %1021 = load i32, ptr %y1433, align 4
  store i32 %1021, ptr %tmp1435, align 4
  %1022 = load i32, ptr %tmp1435, align 4
  %arrayidx1436 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  store i32 %1022, ptr %arrayidx1436, align 8
  %arrayidx1437 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %1023 = load i32, ptr %arrayidx1437, align 4
  %arrayidx1438 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %1024 = load i32, ptr %arrayidx1438, align 8
  %or1439 = or i32 %1023, %1024
  %arrayidx1440 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %1025 = load i32, ptr %arrayidx1440, align 4
  %and1441 = and i32 %or1439, %1025
  %arrayidx1442 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %1026 = load i32, ptr %arrayidx1442, align 4
  %arrayidx1443 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %1027 = load i32, ptr %arrayidx1443, align 8
  %and1444 = and i32 %1026, %1027
  %or1445 = or i32 %and1441, %and1444
  %arrayidx1447 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 5
  %1028 = load i32, ptr %arrayidx1447, align 4
  %arrayidx1448 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 0
  %1029 = load i32, ptr %arrayidx1448, align 16
  %xor1449 = xor i32 %1028, %1029
  %arrayidx1450 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 10
  %1030 = load i32, ptr %arrayidx1450, align 8
  %xor1451 = xor i32 %xor1449, %1030
  %arrayidx1452 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 8
  %1031 = load i32, ptr %arrayidx1452, align 16
  %xor1453 = xor i32 %xor1451, %1031
  %1032 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 1, i32 %xor1453) #1, !srcloc !174
  store i32 %1032, ptr %y1446, align 4
  %1033 = load i32, ptr %y1446, align 4
  store i32 %1033, ptr %tmp1454, align 4
  %1034 = load i32, ptr %tmp1454, align 4
  %arrayidx1455 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 8
  store i32 %1034, ptr %arrayidx1455, align 16
  %add1456 = add i32 %or1445, %1034
  %add1457 = add i32 %add1456, -1894007588
  %arrayidx1459 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %1035 = load i32, ptr %arrayidx1459, align 16
  %1036 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %1035) #1, !srcloc !175
  store i32 %1036, ptr %y1458, align 4
  %1037 = load i32, ptr %y1458, align 4
  store i32 %1037, ptr %tmp1460, align 4
  %1038 = load i32, ptr %tmp1460, align 4
  %add1461 = add i32 %add1457, %1038
  %arrayidx1462 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %1039 = load i32, ptr %arrayidx1462, align 16
  %add1463 = add i32 %1039, %add1461
  store i32 %add1463, ptr %arrayidx1462, align 16
  %arrayidx1465 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %1040 = load i32, ptr %arrayidx1465, align 4
  %1041 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %1040) #1, !srcloc !176
  store i32 %1041, ptr %y1464, align 4
  %1042 = load i32, ptr %y1464, align 4
  store i32 %1042, ptr %tmp1466, align 4
  %1043 = load i32, ptr %tmp1466, align 4
  %arrayidx1467 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  store i32 %1043, ptr %arrayidx1467, align 4
  %arrayidx1468 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %1044 = load i32, ptr %arrayidx1468, align 16
  %arrayidx1469 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %1045 = load i32, ptr %arrayidx1469, align 4
  %or1470 = or i32 %1044, %1045
  %arrayidx1471 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %1046 = load i32, ptr %arrayidx1471, align 8
  %and1472 = and i32 %or1470, %1046
  %arrayidx1473 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %1047 = load i32, ptr %arrayidx1473, align 16
  %arrayidx1474 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %1048 = load i32, ptr %arrayidx1474, align 4
  %and1475 = and i32 %1047, %1048
  %or1476 = or i32 %and1472, %and1475
  %arrayidx1478 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 6
  %1049 = load i32, ptr %arrayidx1478, align 8
  %arrayidx1479 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 1
  %1050 = load i32, ptr %arrayidx1479, align 4
  %xor1480 = xor i32 %1049, %1050
  %arrayidx1481 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 11
  %1051 = load i32, ptr %arrayidx1481, align 4
  %xor1482 = xor i32 %xor1480, %1051
  %arrayidx1483 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 9
  %1052 = load i32, ptr %arrayidx1483, align 4
  %xor1484 = xor i32 %xor1482, %1052
  %1053 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 1, i32 %xor1484) #1, !srcloc !177
  store i32 %1053, ptr %y1477, align 4
  %1054 = load i32, ptr %y1477, align 4
  store i32 %1054, ptr %tmp1485, align 4
  %1055 = load i32, ptr %tmp1485, align 4
  %arrayidx1486 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 9
  store i32 %1055, ptr %arrayidx1486, align 4
  %add1487 = add i32 %or1476, %1055
  %add1488 = add i32 %add1487, -1894007588
  %arrayidx1490 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %1056 = load i32, ptr %arrayidx1490, align 16
  %1057 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %1056) #1, !srcloc !178
  store i32 %1057, ptr %y1489, align 4
  %1058 = load i32, ptr %y1489, align 4
  store i32 %1058, ptr %tmp1491, align 4
  %1059 = load i32, ptr %tmp1491, align 4
  %add1492 = add i32 %add1488, %1059
  %arrayidx1493 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %1060 = load i32, ptr %arrayidx1493, align 4
  %add1494 = add i32 %1060, %add1492
  store i32 %add1494, ptr %arrayidx1493, align 4
  %arrayidx1496 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %1061 = load i32, ptr %arrayidx1496, align 16
  %1062 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %1061) #1, !srcloc !179
  store i32 %1062, ptr %y1495, align 4
  %1063 = load i32, ptr %y1495, align 4
  store i32 %1063, ptr %tmp1497, align 4
  %1064 = load i32, ptr %tmp1497, align 4
  %arrayidx1498 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  store i32 %1064, ptr %arrayidx1498, align 16
  %arrayidx1499 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %1065 = load i32, ptr %arrayidx1499, align 16
  %arrayidx1500 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %1066 = load i32, ptr %arrayidx1500, align 16
  %or1501 = or i32 %1065, %1066
  %arrayidx1502 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %1067 = load i32, ptr %arrayidx1502, align 4
  %and1503 = and i32 %or1501, %1067
  %arrayidx1504 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %1068 = load i32, ptr %arrayidx1504, align 16
  %arrayidx1505 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %1069 = load i32, ptr %arrayidx1505, align 16
  %and1506 = and i32 %1068, %1069
  %or1507 = or i32 %and1503, %and1506
  %arrayidx1509 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 7
  %1070 = load i32, ptr %arrayidx1509, align 4
  %arrayidx1510 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 2
  %1071 = load i32, ptr %arrayidx1510, align 8
  %xor1511 = xor i32 %1070, %1071
  %arrayidx1512 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 12
  %1072 = load i32, ptr %arrayidx1512, align 16
  %xor1513 = xor i32 %xor1511, %1072
  %arrayidx1514 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 10
  %1073 = load i32, ptr %arrayidx1514, align 8
  %xor1515 = xor i32 %xor1513, %1073
  %1074 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 1, i32 %xor1515) #1, !srcloc !180
  store i32 %1074, ptr %y1508, align 4
  %1075 = load i32, ptr %y1508, align 4
  store i32 %1075, ptr %tmp1516, align 4
  %1076 = load i32, ptr %tmp1516, align 4
  %arrayidx1517 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 10
  store i32 %1076, ptr %arrayidx1517, align 8
  %add1518 = add i32 %or1507, %1076
  %add1519 = add i32 %add1518, -1894007588
  %arrayidx1521 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %1077 = load i32, ptr %arrayidx1521, align 4
  %1078 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %1077) #1, !srcloc !181
  store i32 %1078, ptr %y1520, align 4
  %1079 = load i32, ptr %y1520, align 4
  store i32 %1079, ptr %tmp1522, align 4
  %1080 = load i32, ptr %tmp1522, align 4
  %add1523 = add i32 %add1519, %1080
  %arrayidx1524 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %1081 = load i32, ptr %arrayidx1524, align 8
  %add1525 = add i32 %1081, %add1523
  store i32 %add1525, ptr %arrayidx1524, align 8
  %arrayidx1527 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %1082 = load i32, ptr %arrayidx1527, align 16
  %1083 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %1082) #1, !srcloc !182
  store i32 %1083, ptr %y1526, align 4
  %1084 = load i32, ptr %y1526, align 4
  store i32 %1084, ptr %tmp1528, align 4
  %1085 = load i32, ptr %tmp1528, align 4
  %arrayidx1529 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  store i32 %1085, ptr %arrayidx1529, align 16
  %arrayidx1530 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %1086 = load i32, ptr %arrayidx1530, align 4
  %arrayidx1531 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %1087 = load i32, ptr %arrayidx1531, align 16
  %or1532 = or i32 %1086, %1087
  %arrayidx1533 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %1088 = load i32, ptr %arrayidx1533, align 16
  %and1534 = and i32 %or1532, %1088
  %arrayidx1535 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %1089 = load i32, ptr %arrayidx1535, align 4
  %arrayidx1536 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %1090 = load i32, ptr %arrayidx1536, align 16
  %and1537 = and i32 %1089, %1090
  %or1538 = or i32 %and1534, %and1537
  %arrayidx1540 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 8
  %1091 = load i32, ptr %arrayidx1540, align 16
  %arrayidx1541 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 3
  %1092 = load i32, ptr %arrayidx1541, align 4
  %xor1542 = xor i32 %1091, %1092
  %arrayidx1543 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 13
  %1093 = load i32, ptr %arrayidx1543, align 4
  %xor1544 = xor i32 %xor1542, %1093
  %arrayidx1545 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 11
  %1094 = load i32, ptr %arrayidx1545, align 4
  %xor1546 = xor i32 %xor1544, %1094
  %1095 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 1, i32 %xor1546) #1, !srcloc !183
  store i32 %1095, ptr %y1539, align 4
  %1096 = load i32, ptr %y1539, align 4
  store i32 %1096, ptr %tmp1547, align 4
  %1097 = load i32, ptr %tmp1547, align 4
  %arrayidx1548 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 11
  store i32 %1097, ptr %arrayidx1548, align 4
  %add1549 = add i32 %or1538, %1097
  %add1550 = add i32 %add1549, -1894007588
  %arrayidx1552 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %1098 = load i32, ptr %arrayidx1552, align 8
  %1099 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %1098) #1, !srcloc !184
  store i32 %1099, ptr %y1551, align 4
  %1100 = load i32, ptr %y1551, align 4
  store i32 %1100, ptr %tmp1553, align 4
  %1101 = load i32, ptr %tmp1553, align 4
  %add1554 = add i32 %add1550, %1101
  %arrayidx1555 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %1102 = load i32, ptr %arrayidx1555, align 4
  %add1556 = add i32 %1102, %add1554
  store i32 %add1556, ptr %arrayidx1555, align 4
  %arrayidx1558 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %1103 = load i32, ptr %arrayidx1558, align 4
  %1104 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %1103) #1, !srcloc !185
  store i32 %1104, ptr %y1557, align 4
  %1105 = load i32, ptr %y1557, align 4
  store i32 %1105, ptr %tmp1559, align 4
  %1106 = load i32, ptr %tmp1559, align 4
  %arrayidx1560 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  store i32 %1106, ptr %arrayidx1560, align 4
  %arrayidx1561 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %1107 = load i32, ptr %arrayidx1561, align 8
  %arrayidx1562 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %1108 = load i32, ptr %arrayidx1562, align 4
  %or1563 = or i32 %1107, %1108
  %arrayidx1564 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %1109 = load i32, ptr %arrayidx1564, align 16
  %and1565 = and i32 %or1563, %1109
  %arrayidx1566 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %1110 = load i32, ptr %arrayidx1566, align 8
  %arrayidx1567 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %1111 = load i32, ptr %arrayidx1567, align 4
  %and1568 = and i32 %1110, %1111
  %or1569 = or i32 %and1565, %and1568
  %arrayidx1571 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 9
  %1112 = load i32, ptr %arrayidx1571, align 4
  %arrayidx1572 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 4
  %1113 = load i32, ptr %arrayidx1572, align 16
  %xor1573 = xor i32 %1112, %1113
  %arrayidx1574 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 14
  %1114 = load i32, ptr %arrayidx1574, align 8
  %xor1575 = xor i32 %xor1573, %1114
  %arrayidx1576 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 12
  %1115 = load i32, ptr %arrayidx1576, align 16
  %xor1577 = xor i32 %xor1575, %1115
  %1116 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 1, i32 %xor1577) #1, !srcloc !186
  store i32 %1116, ptr %y1570, align 4
  %1117 = load i32, ptr %y1570, align 4
  store i32 %1117, ptr %tmp1578, align 4
  %1118 = load i32, ptr %tmp1578, align 4
  %arrayidx1579 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 12
  store i32 %1118, ptr %arrayidx1579, align 16
  %add1580 = add i32 %or1569, %1118
  %add1581 = add i32 %add1580, -1894007588
  %arrayidx1583 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %1119 = load i32, ptr %arrayidx1583, align 4
  %1120 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %1119) #1, !srcloc !187
  store i32 %1120, ptr %y1582, align 4
  %1121 = load i32, ptr %y1582, align 4
  store i32 %1121, ptr %tmp1584, align 4
  %1122 = load i32, ptr %tmp1584, align 4
  %add1585 = add i32 %add1581, %1122
  %arrayidx1586 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %1123 = load i32, ptr %arrayidx1586, align 16
  %add1587 = add i32 %1123, %add1585
  store i32 %add1587, ptr %arrayidx1586, align 16
  %arrayidx1589 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %1124 = load i32, ptr %arrayidx1589, align 8
  %1125 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %1124) #1, !srcloc !188
  store i32 %1125, ptr %y1588, align 4
  %1126 = load i32, ptr %y1588, align 4
  store i32 %1126, ptr %tmp1590, align 4
  %1127 = load i32, ptr %tmp1590, align 4
  %arrayidx1591 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  store i32 %1127, ptr %arrayidx1591, align 8
  %arrayidx1592 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %1128 = load i32, ptr %arrayidx1592, align 4
  %arrayidx1593 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %1129 = load i32, ptr %arrayidx1593, align 8
  %or1594 = or i32 %1128, %1129
  %arrayidx1595 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %1130 = load i32, ptr %arrayidx1595, align 4
  %and1596 = and i32 %or1594, %1130
  %arrayidx1597 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %1131 = load i32, ptr %arrayidx1597, align 4
  %arrayidx1598 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %1132 = load i32, ptr %arrayidx1598, align 8
  %and1599 = and i32 %1131, %1132
  %or1600 = or i32 %and1596, %and1599
  %arrayidx1602 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 10
  %1133 = load i32, ptr %arrayidx1602, align 8
  %arrayidx1603 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 5
  %1134 = load i32, ptr %arrayidx1603, align 4
  %xor1604 = xor i32 %1133, %1134
  %arrayidx1605 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 15
  %1135 = load i32, ptr %arrayidx1605, align 4
  %xor1606 = xor i32 %xor1604, %1135
  %arrayidx1607 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 13
  %1136 = load i32, ptr %arrayidx1607, align 4
  %xor1608 = xor i32 %xor1606, %1136
  %1137 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 1, i32 %xor1608) #1, !srcloc !189
  store i32 %1137, ptr %y1601, align 4
  %1138 = load i32, ptr %y1601, align 4
  store i32 %1138, ptr %tmp1609, align 4
  %1139 = load i32, ptr %tmp1609, align 4
  %arrayidx1610 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 13
  store i32 %1139, ptr %arrayidx1610, align 4
  %add1611 = add i32 %or1600, %1139
  %add1612 = add i32 %add1611, -1894007588
  %arrayidx1614 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %1140 = load i32, ptr %arrayidx1614, align 16
  %1141 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %1140) #1, !srcloc !190
  store i32 %1141, ptr %y1613, align 4
  %1142 = load i32, ptr %y1613, align 4
  store i32 %1142, ptr %tmp1615, align 4
  %1143 = load i32, ptr %tmp1615, align 4
  %add1616 = add i32 %add1612, %1143
  %arrayidx1617 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %1144 = load i32, ptr %arrayidx1617, align 16
  %add1618 = add i32 %1144, %add1616
  store i32 %add1618, ptr %arrayidx1617, align 16
  %arrayidx1620 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %1145 = load i32, ptr %arrayidx1620, align 4
  %1146 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %1145) #1, !srcloc !191
  store i32 %1146, ptr %y1619, align 4
  %1147 = load i32, ptr %y1619, align 4
  store i32 %1147, ptr %tmp1621, align 4
  %1148 = load i32, ptr %tmp1621, align 4
  %arrayidx1622 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  store i32 %1148, ptr %arrayidx1622, align 4
  %arrayidx1623 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %1149 = load i32, ptr %arrayidx1623, align 16
  %arrayidx1624 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %1150 = load i32, ptr %arrayidx1624, align 4
  %or1625 = or i32 %1149, %1150
  %arrayidx1626 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %1151 = load i32, ptr %arrayidx1626, align 8
  %and1627 = and i32 %or1625, %1151
  %arrayidx1628 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %1152 = load i32, ptr %arrayidx1628, align 16
  %arrayidx1629 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %1153 = load i32, ptr %arrayidx1629, align 4
  %and1630 = and i32 %1152, %1153
  %or1631 = or i32 %and1627, %and1630
  %arrayidx1633 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 11
  %1154 = load i32, ptr %arrayidx1633, align 4
  %arrayidx1634 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 6
  %1155 = load i32, ptr %arrayidx1634, align 8
  %xor1635 = xor i32 %1154, %1155
  %arrayidx1636 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 0
  %1156 = load i32, ptr %arrayidx1636, align 16
  %xor1637 = xor i32 %xor1635, %1156
  %arrayidx1638 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 14
  %1157 = load i32, ptr %arrayidx1638, align 8
  %xor1639 = xor i32 %xor1637, %1157
  %1158 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 1, i32 %xor1639) #1, !srcloc !192
  store i32 %1158, ptr %y1632, align 4
  %1159 = load i32, ptr %y1632, align 4
  store i32 %1159, ptr %tmp1640, align 4
  %1160 = load i32, ptr %tmp1640, align 4
  %arrayidx1641 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 14
  store i32 %1160, ptr %arrayidx1641, align 8
  %add1642 = add i32 %or1631, %1160
  %add1643 = add i32 %add1642, -1894007588
  %arrayidx1645 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %1161 = load i32, ptr %arrayidx1645, align 16
  %1162 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %1161) #1, !srcloc !193
  store i32 %1162, ptr %y1644, align 4
  %1163 = load i32, ptr %y1644, align 4
  store i32 %1163, ptr %tmp1646, align 4
  %1164 = load i32, ptr %tmp1646, align 4
  %add1647 = add i32 %add1643, %1164
  %arrayidx1648 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %1165 = load i32, ptr %arrayidx1648, align 4
  %add1649 = add i32 %1165, %add1647
  store i32 %add1649, ptr %arrayidx1648, align 4
  %arrayidx1651 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %1166 = load i32, ptr %arrayidx1651, align 16
  %1167 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %1166) #1, !srcloc !194
  store i32 %1167, ptr %y1650, align 4
  %1168 = load i32, ptr %y1650, align 4
  store i32 %1168, ptr %tmp1652, align 4
  %1169 = load i32, ptr %tmp1652, align 4
  %arrayidx1653 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  store i32 %1169, ptr %arrayidx1653, align 16
  %arrayidx1654 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %1170 = load i32, ptr %arrayidx1654, align 16
  %arrayidx1655 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %1171 = load i32, ptr %arrayidx1655, align 16
  %or1656 = or i32 %1170, %1171
  %arrayidx1657 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %1172 = load i32, ptr %arrayidx1657, align 4
  %and1658 = and i32 %or1656, %1172
  %arrayidx1659 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %1173 = load i32, ptr %arrayidx1659, align 16
  %arrayidx1660 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %1174 = load i32, ptr %arrayidx1660, align 16
  %and1661 = and i32 %1173, %1174
  %or1662 = or i32 %and1658, %and1661
  %arrayidx1664 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 12
  %1175 = load i32, ptr %arrayidx1664, align 16
  %arrayidx1665 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 7
  %1176 = load i32, ptr %arrayidx1665, align 4
  %xor1666 = xor i32 %1175, %1176
  %arrayidx1667 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 1
  %1177 = load i32, ptr %arrayidx1667, align 4
  %xor1668 = xor i32 %xor1666, %1177
  %arrayidx1669 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 15
  %1178 = load i32, ptr %arrayidx1669, align 4
  %xor1670 = xor i32 %xor1668, %1178
  %1179 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 1, i32 %xor1670) #1, !srcloc !195
  store i32 %1179, ptr %y1663, align 4
  %1180 = load i32, ptr %y1663, align 4
  store i32 %1180, ptr %tmp1671, align 4
  %1181 = load i32, ptr %tmp1671, align 4
  %arrayidx1672 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 15
  store i32 %1181, ptr %arrayidx1672, align 4
  %add1673 = add i32 %or1662, %1181
  %add1674 = add i32 %add1673, -1894007588
  %arrayidx1676 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %1182 = load i32, ptr %arrayidx1676, align 4
  %1183 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %1182) #1, !srcloc !196
  store i32 %1183, ptr %y1675, align 4
  %1184 = load i32, ptr %y1675, align 4
  store i32 %1184, ptr %tmp1677, align 4
  %1185 = load i32, ptr %tmp1677, align 4
  %add1678 = add i32 %add1674, %1185
  %arrayidx1679 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %1186 = load i32, ptr %arrayidx1679, align 8
  %add1680 = add i32 %1186, %add1678
  store i32 %add1680, ptr %arrayidx1679, align 8
  %arrayidx1682 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %1187 = load i32, ptr %arrayidx1682, align 16
  %1188 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %1187) #1, !srcloc !197
  store i32 %1188, ptr %y1681, align 4
  %1189 = load i32, ptr %y1681, align 4
  store i32 %1189, ptr %tmp1683, align 4
  %1190 = load i32, ptr %tmp1683, align 4
  %arrayidx1684 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  store i32 %1190, ptr %arrayidx1684, align 16
  %arrayidx1685 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %1191 = load i32, ptr %arrayidx1685, align 4
  %arrayidx1686 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %1192 = load i32, ptr %arrayidx1686, align 16
  %or1687 = or i32 %1191, %1192
  %arrayidx1688 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %1193 = load i32, ptr %arrayidx1688, align 16
  %and1689 = and i32 %or1687, %1193
  %arrayidx1690 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %1194 = load i32, ptr %arrayidx1690, align 4
  %arrayidx1691 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %1195 = load i32, ptr %arrayidx1691, align 16
  %and1692 = and i32 %1194, %1195
  %or1693 = or i32 %and1689, %and1692
  %arrayidx1695 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 13
  %1196 = load i32, ptr %arrayidx1695, align 4
  %arrayidx1696 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 8
  %1197 = load i32, ptr %arrayidx1696, align 16
  %xor1697 = xor i32 %1196, %1197
  %arrayidx1698 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 2
  %1198 = load i32, ptr %arrayidx1698, align 8
  %xor1699 = xor i32 %xor1697, %1198
  %arrayidx1700 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 0
  %1199 = load i32, ptr %arrayidx1700, align 16
  %xor1701 = xor i32 %xor1699, %1199
  %1200 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 1, i32 %xor1701) #1, !srcloc !198
  store i32 %1200, ptr %y1694, align 4
  %1201 = load i32, ptr %y1694, align 4
  store i32 %1201, ptr %tmp1702, align 4
  %1202 = load i32, ptr %tmp1702, align 4
  %arrayidx1703 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 0
  store i32 %1202, ptr %arrayidx1703, align 16
  %add1704 = add i32 %or1693, %1202
  %add1705 = add i32 %add1704, -1894007588
  %arrayidx1707 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %1203 = load i32, ptr %arrayidx1707, align 8
  %1204 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %1203) #1, !srcloc !199
  store i32 %1204, ptr %y1706, align 4
  %1205 = load i32, ptr %y1706, align 4
  store i32 %1205, ptr %tmp1708, align 4
  %1206 = load i32, ptr %tmp1708, align 4
  %add1709 = add i32 %add1705, %1206
  %arrayidx1710 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %1207 = load i32, ptr %arrayidx1710, align 4
  %add1711 = add i32 %1207, %add1709
  store i32 %add1711, ptr %arrayidx1710, align 4
  %arrayidx1713 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %1208 = load i32, ptr %arrayidx1713, align 4
  %1209 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %1208) #1, !srcloc !200
  store i32 %1209, ptr %y1712, align 4
  %1210 = load i32, ptr %y1712, align 4
  store i32 %1210, ptr %tmp1714, align 4
  %1211 = load i32, ptr %tmp1714, align 4
  %arrayidx1715 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  store i32 %1211, ptr %arrayidx1715, align 4
  %arrayidx1716 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %1212 = load i32, ptr %arrayidx1716, align 8
  %arrayidx1717 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %1213 = load i32, ptr %arrayidx1717, align 4
  %or1718 = or i32 %1212, %1213
  %arrayidx1719 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %1214 = load i32, ptr %arrayidx1719, align 16
  %and1720 = and i32 %or1718, %1214
  %arrayidx1721 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %1215 = load i32, ptr %arrayidx1721, align 8
  %arrayidx1722 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %1216 = load i32, ptr %arrayidx1722, align 4
  %and1723 = and i32 %1215, %1216
  %or1724 = or i32 %and1720, %and1723
  %arrayidx1726 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 14
  %1217 = load i32, ptr %arrayidx1726, align 8
  %arrayidx1727 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 9
  %1218 = load i32, ptr %arrayidx1727, align 4
  %xor1728 = xor i32 %1217, %1218
  %arrayidx1729 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 3
  %1219 = load i32, ptr %arrayidx1729, align 4
  %xor1730 = xor i32 %xor1728, %1219
  %arrayidx1731 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 1
  %1220 = load i32, ptr %arrayidx1731, align 4
  %xor1732 = xor i32 %xor1730, %1220
  %1221 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 1, i32 %xor1732) #1, !srcloc !201
  store i32 %1221, ptr %y1725, align 4
  %1222 = load i32, ptr %y1725, align 4
  store i32 %1222, ptr %tmp1733, align 4
  %1223 = load i32, ptr %tmp1733, align 4
  %arrayidx1734 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 1
  store i32 %1223, ptr %arrayidx1734, align 4
  %add1735 = add i32 %or1724, %1223
  %add1736 = add i32 %add1735, -1894007588
  %arrayidx1738 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %1224 = load i32, ptr %arrayidx1738, align 4
  %1225 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %1224) #1, !srcloc !202
  store i32 %1225, ptr %y1737, align 4
  %1226 = load i32, ptr %y1737, align 4
  store i32 %1226, ptr %tmp1739, align 4
  %1227 = load i32, ptr %tmp1739, align 4
  %add1740 = add i32 %add1736, %1227
  %arrayidx1741 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %1228 = load i32, ptr %arrayidx1741, align 16
  %add1742 = add i32 %1228, %add1740
  store i32 %add1742, ptr %arrayidx1741, align 16
  %arrayidx1744 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %1229 = load i32, ptr %arrayidx1744, align 8
  %1230 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %1229) #1, !srcloc !203
  store i32 %1230, ptr %y1743, align 4
  %1231 = load i32, ptr %y1743, align 4
  store i32 %1231, ptr %tmp1745, align 4
  %1232 = load i32, ptr %tmp1745, align 4
  %arrayidx1746 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  store i32 %1232, ptr %arrayidx1746, align 8
  %arrayidx1747 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %1233 = load i32, ptr %arrayidx1747, align 4
  %arrayidx1748 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %1234 = load i32, ptr %arrayidx1748, align 8
  %or1749 = or i32 %1233, %1234
  %arrayidx1750 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %1235 = load i32, ptr %arrayidx1750, align 4
  %and1751 = and i32 %or1749, %1235
  %arrayidx1752 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %1236 = load i32, ptr %arrayidx1752, align 4
  %arrayidx1753 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %1237 = load i32, ptr %arrayidx1753, align 8
  %and1754 = and i32 %1236, %1237
  %or1755 = or i32 %and1751, %and1754
  %arrayidx1757 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 15
  %1238 = load i32, ptr %arrayidx1757, align 4
  %arrayidx1758 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 10
  %1239 = load i32, ptr %arrayidx1758, align 8
  %xor1759 = xor i32 %1238, %1239
  %arrayidx1760 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 4
  %1240 = load i32, ptr %arrayidx1760, align 16
  %xor1761 = xor i32 %xor1759, %1240
  %arrayidx1762 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 2
  %1241 = load i32, ptr %arrayidx1762, align 8
  %xor1763 = xor i32 %xor1761, %1241
  %1242 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 1, i32 %xor1763) #1, !srcloc !204
  store i32 %1242, ptr %y1756, align 4
  %1243 = load i32, ptr %y1756, align 4
  store i32 %1243, ptr %tmp1764, align 4
  %1244 = load i32, ptr %tmp1764, align 4
  %arrayidx1765 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 2
  store i32 %1244, ptr %arrayidx1765, align 8
  %add1766 = add i32 %or1755, %1244
  %add1767 = add i32 %add1766, -1894007588
  %arrayidx1769 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %1245 = load i32, ptr %arrayidx1769, align 16
  %1246 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %1245) #1, !srcloc !205
  store i32 %1246, ptr %y1768, align 4
  %1247 = load i32, ptr %y1768, align 4
  store i32 %1247, ptr %tmp1770, align 4
  %1248 = load i32, ptr %tmp1770, align 4
  %add1771 = add i32 %add1767, %1248
  %arrayidx1772 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %1249 = load i32, ptr %arrayidx1772, align 16
  %add1773 = add i32 %1249, %add1771
  store i32 %add1773, ptr %arrayidx1772, align 16
  %arrayidx1775 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %1250 = load i32, ptr %arrayidx1775, align 4
  %1251 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %1250) #1, !srcloc !206
  store i32 %1251, ptr %y1774, align 4
  %1252 = load i32, ptr %y1774, align 4
  store i32 %1252, ptr %tmp1776, align 4
  %1253 = load i32, ptr %tmp1776, align 4
  %arrayidx1777 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  store i32 %1253, ptr %arrayidx1777, align 4
  %arrayidx1778 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %1254 = load i32, ptr %arrayidx1778, align 16
  %arrayidx1779 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %1255 = load i32, ptr %arrayidx1779, align 4
  %or1780 = or i32 %1254, %1255
  %arrayidx1781 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %1256 = load i32, ptr %arrayidx1781, align 8
  %and1782 = and i32 %or1780, %1256
  %arrayidx1783 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %1257 = load i32, ptr %arrayidx1783, align 16
  %arrayidx1784 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %1258 = load i32, ptr %arrayidx1784, align 4
  %and1785 = and i32 %1257, %1258
  %or1786 = or i32 %and1782, %and1785
  %arrayidx1788 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 0
  %1259 = load i32, ptr %arrayidx1788, align 16
  %arrayidx1789 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 11
  %1260 = load i32, ptr %arrayidx1789, align 4
  %xor1790 = xor i32 %1259, %1260
  %arrayidx1791 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 5
  %1261 = load i32, ptr %arrayidx1791, align 4
  %xor1792 = xor i32 %xor1790, %1261
  %arrayidx1793 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 3
  %1262 = load i32, ptr %arrayidx1793, align 4
  %xor1794 = xor i32 %xor1792, %1262
  %1263 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 1, i32 %xor1794) #1, !srcloc !207
  store i32 %1263, ptr %y1787, align 4
  %1264 = load i32, ptr %y1787, align 4
  store i32 %1264, ptr %tmp1795, align 4
  %1265 = load i32, ptr %tmp1795, align 4
  %arrayidx1796 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 3
  store i32 %1265, ptr %arrayidx1796, align 4
  %add1797 = add i32 %or1786, %1265
  %add1798 = add i32 %add1797, -1894007588
  %arrayidx1800 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %1266 = load i32, ptr %arrayidx1800, align 16
  %1267 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %1266) #1, !srcloc !208
  store i32 %1267, ptr %y1799, align 4
  %1268 = load i32, ptr %y1799, align 4
  store i32 %1268, ptr %tmp1801, align 4
  %1269 = load i32, ptr %tmp1801, align 4
  %add1802 = add i32 %add1798, %1269
  %arrayidx1803 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %1270 = load i32, ptr %arrayidx1803, align 4
  %add1804 = add i32 %1270, %add1802
  store i32 %add1804, ptr %arrayidx1803, align 4
  %arrayidx1806 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %1271 = load i32, ptr %arrayidx1806, align 16
  %1272 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %1271) #1, !srcloc !209
  store i32 %1272, ptr %y1805, align 4
  %1273 = load i32, ptr %y1805, align 4
  store i32 %1273, ptr %tmp1807, align 4
  %1274 = load i32, ptr %tmp1807, align 4
  %arrayidx1808 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  store i32 %1274, ptr %arrayidx1808, align 16
  %arrayidx1809 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %1275 = load i32, ptr %arrayidx1809, align 16
  %arrayidx1810 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %1276 = load i32, ptr %arrayidx1810, align 16
  %or1811 = or i32 %1275, %1276
  %arrayidx1812 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %1277 = load i32, ptr %arrayidx1812, align 4
  %and1813 = and i32 %or1811, %1277
  %arrayidx1814 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %1278 = load i32, ptr %arrayidx1814, align 16
  %arrayidx1815 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %1279 = load i32, ptr %arrayidx1815, align 16
  %and1816 = and i32 %1278, %1279
  %or1817 = or i32 %and1813, %and1816
  %arrayidx1819 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 1
  %1280 = load i32, ptr %arrayidx1819, align 4
  %arrayidx1820 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 12
  %1281 = load i32, ptr %arrayidx1820, align 16
  %xor1821 = xor i32 %1280, %1281
  %arrayidx1822 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 6
  %1282 = load i32, ptr %arrayidx1822, align 8
  %xor1823 = xor i32 %xor1821, %1282
  %arrayidx1824 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 4
  %1283 = load i32, ptr %arrayidx1824, align 16
  %xor1825 = xor i32 %xor1823, %1283
  %1284 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 1, i32 %xor1825) #1, !srcloc !210
  store i32 %1284, ptr %y1818, align 4
  %1285 = load i32, ptr %y1818, align 4
  store i32 %1285, ptr %tmp1826, align 4
  %1286 = load i32, ptr %tmp1826, align 4
  %arrayidx1827 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 4
  store i32 %1286, ptr %arrayidx1827, align 16
  %add1828 = add i32 %or1817, %1286
  %add1829 = add i32 %add1828, -1894007588
  %arrayidx1831 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %1287 = load i32, ptr %arrayidx1831, align 4
  %1288 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %1287) #1, !srcloc !211
  store i32 %1288, ptr %y1830, align 4
  %1289 = load i32, ptr %y1830, align 4
  store i32 %1289, ptr %tmp1832, align 4
  %1290 = load i32, ptr %tmp1832, align 4
  %add1833 = add i32 %add1829, %1290
  %arrayidx1834 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %1291 = load i32, ptr %arrayidx1834, align 8
  %add1835 = add i32 %1291, %add1833
  store i32 %add1835, ptr %arrayidx1834, align 8
  %arrayidx1837 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %1292 = load i32, ptr %arrayidx1837, align 16
  %1293 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %1292) #1, !srcloc !212
  store i32 %1293, ptr %y1836, align 4
  %1294 = load i32, ptr %y1836, align 4
  store i32 %1294, ptr %tmp1838, align 4
  %1295 = load i32, ptr %tmp1838, align 4
  %arrayidx1839 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  store i32 %1295, ptr %arrayidx1839, align 16
  %arrayidx1840 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %1296 = load i32, ptr %arrayidx1840, align 4
  %arrayidx1841 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %1297 = load i32, ptr %arrayidx1841, align 16
  %or1842 = or i32 %1296, %1297
  %arrayidx1843 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %1298 = load i32, ptr %arrayidx1843, align 16
  %and1844 = and i32 %or1842, %1298
  %arrayidx1845 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %1299 = load i32, ptr %arrayidx1845, align 4
  %arrayidx1846 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %1300 = load i32, ptr %arrayidx1846, align 16
  %and1847 = and i32 %1299, %1300
  %or1848 = or i32 %and1844, %and1847
  %arrayidx1850 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 2
  %1301 = load i32, ptr %arrayidx1850, align 8
  %arrayidx1851 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 13
  %1302 = load i32, ptr %arrayidx1851, align 4
  %xor1852 = xor i32 %1301, %1302
  %arrayidx1853 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 7
  %1303 = load i32, ptr %arrayidx1853, align 4
  %xor1854 = xor i32 %xor1852, %1303
  %arrayidx1855 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 5
  %1304 = load i32, ptr %arrayidx1855, align 4
  %xor1856 = xor i32 %xor1854, %1304
  %1305 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 1, i32 %xor1856) #1, !srcloc !213
  store i32 %1305, ptr %y1849, align 4
  %1306 = load i32, ptr %y1849, align 4
  store i32 %1306, ptr %tmp1857, align 4
  %1307 = load i32, ptr %tmp1857, align 4
  %arrayidx1858 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 5
  store i32 %1307, ptr %arrayidx1858, align 4
  %add1859 = add i32 %or1848, %1307
  %add1860 = add i32 %add1859, -1894007588
  %arrayidx1862 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %1308 = load i32, ptr %arrayidx1862, align 8
  %1309 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %1308) #1, !srcloc !214
  store i32 %1309, ptr %y1861, align 4
  %1310 = load i32, ptr %y1861, align 4
  store i32 %1310, ptr %tmp1863, align 4
  %1311 = load i32, ptr %tmp1863, align 4
  %add1864 = add i32 %add1860, %1311
  %arrayidx1865 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %1312 = load i32, ptr %arrayidx1865, align 4
  %add1866 = add i32 %1312, %add1864
  store i32 %add1866, ptr %arrayidx1865, align 4
  %arrayidx1868 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %1313 = load i32, ptr %arrayidx1868, align 4
  %1314 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %1313) #1, !srcloc !215
  store i32 %1314, ptr %y1867, align 4
  %1315 = load i32, ptr %y1867, align 4
  store i32 %1315, ptr %tmp1869, align 4
  %1316 = load i32, ptr %tmp1869, align 4
  %arrayidx1870 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  store i32 %1316, ptr %arrayidx1870, align 4
  %arrayidx1871 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %1317 = load i32, ptr %arrayidx1871, align 8
  %arrayidx1872 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %1318 = load i32, ptr %arrayidx1872, align 4
  %or1873 = or i32 %1317, %1318
  %arrayidx1874 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %1319 = load i32, ptr %arrayidx1874, align 16
  %and1875 = and i32 %or1873, %1319
  %arrayidx1876 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %1320 = load i32, ptr %arrayidx1876, align 8
  %arrayidx1877 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %1321 = load i32, ptr %arrayidx1877, align 4
  %and1878 = and i32 %1320, %1321
  %or1879 = or i32 %and1875, %and1878
  %arrayidx1881 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 3
  %1322 = load i32, ptr %arrayidx1881, align 4
  %arrayidx1882 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 14
  %1323 = load i32, ptr %arrayidx1882, align 8
  %xor1883 = xor i32 %1322, %1323
  %arrayidx1884 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 8
  %1324 = load i32, ptr %arrayidx1884, align 16
  %xor1885 = xor i32 %xor1883, %1324
  %arrayidx1886 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 6
  %1325 = load i32, ptr %arrayidx1886, align 8
  %xor1887 = xor i32 %xor1885, %1325
  %1326 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 1, i32 %xor1887) #1, !srcloc !216
  store i32 %1326, ptr %y1880, align 4
  %1327 = load i32, ptr %y1880, align 4
  store i32 %1327, ptr %tmp1888, align 4
  %1328 = load i32, ptr %tmp1888, align 4
  %arrayidx1889 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 6
  store i32 %1328, ptr %arrayidx1889, align 8
  %add1890 = add i32 %or1879, %1328
  %add1891 = add i32 %add1890, -1894007588
  %arrayidx1893 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %1329 = load i32, ptr %arrayidx1893, align 4
  %1330 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %1329) #1, !srcloc !217
  store i32 %1330, ptr %y1892, align 4
  %1331 = load i32, ptr %y1892, align 4
  store i32 %1331, ptr %tmp1894, align 4
  %1332 = load i32, ptr %tmp1894, align 4
  %add1895 = add i32 %add1891, %1332
  %arrayidx1896 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %1333 = load i32, ptr %arrayidx1896, align 16
  %add1897 = add i32 %1333, %add1895
  store i32 %add1897, ptr %arrayidx1896, align 16
  %arrayidx1899 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %1334 = load i32, ptr %arrayidx1899, align 8
  %1335 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %1334) #1, !srcloc !218
  store i32 %1335, ptr %y1898, align 4
  %1336 = load i32, ptr %y1898, align 4
  store i32 %1336, ptr %tmp1900, align 4
  %1337 = load i32, ptr %tmp1900, align 4
  %arrayidx1901 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  store i32 %1337, ptr %arrayidx1901, align 8
  %arrayidx1902 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %1338 = load i32, ptr %arrayidx1902, align 4
  %arrayidx1903 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %1339 = load i32, ptr %arrayidx1903, align 8
  %or1904 = or i32 %1338, %1339
  %arrayidx1905 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %1340 = load i32, ptr %arrayidx1905, align 4
  %and1906 = and i32 %or1904, %1340
  %arrayidx1907 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %1341 = load i32, ptr %arrayidx1907, align 4
  %arrayidx1908 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %1342 = load i32, ptr %arrayidx1908, align 8
  %and1909 = and i32 %1341, %1342
  %or1910 = or i32 %and1906, %and1909
  %arrayidx1912 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 4
  %1343 = load i32, ptr %arrayidx1912, align 16
  %arrayidx1913 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 15
  %1344 = load i32, ptr %arrayidx1913, align 4
  %xor1914 = xor i32 %1343, %1344
  %arrayidx1915 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 9
  %1345 = load i32, ptr %arrayidx1915, align 4
  %xor1916 = xor i32 %xor1914, %1345
  %arrayidx1917 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 7
  %1346 = load i32, ptr %arrayidx1917, align 4
  %xor1918 = xor i32 %xor1916, %1346
  %1347 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 1, i32 %xor1918) #1, !srcloc !219
  store i32 %1347, ptr %y1911, align 4
  %1348 = load i32, ptr %y1911, align 4
  store i32 %1348, ptr %tmp1919, align 4
  %1349 = load i32, ptr %tmp1919, align 4
  %arrayidx1920 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 7
  store i32 %1349, ptr %arrayidx1920, align 4
  %add1921 = add i32 %or1910, %1349
  %add1922 = add i32 %add1921, -1894007588
  %arrayidx1924 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %1350 = load i32, ptr %arrayidx1924, align 16
  %1351 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %1350) #1, !srcloc !220
  store i32 %1351, ptr %y1923, align 4
  %1352 = load i32, ptr %y1923, align 4
  store i32 %1352, ptr %tmp1925, align 4
  %1353 = load i32, ptr %tmp1925, align 4
  %add1926 = add i32 %add1922, %1353
  %arrayidx1927 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %1354 = load i32, ptr %arrayidx1927, align 16
  %add1928 = add i32 %1354, %add1926
  store i32 %add1928, ptr %arrayidx1927, align 16
  %arrayidx1930 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %1355 = load i32, ptr %arrayidx1930, align 4
  %1356 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %1355) #1, !srcloc !221
  store i32 %1356, ptr %y1929, align 4
  %1357 = load i32, ptr %y1929, align 4
  store i32 %1357, ptr %tmp1931, align 4
  %1358 = load i32, ptr %tmp1931, align 4
  %arrayidx1932 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  store i32 %1358, ptr %arrayidx1932, align 4
  %arrayidx1933 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %1359 = load i32, ptr %arrayidx1933, align 16
  %arrayidx1934 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %1360 = load i32, ptr %arrayidx1934, align 4
  %or1935 = or i32 %1359, %1360
  %arrayidx1936 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %1361 = load i32, ptr %arrayidx1936, align 8
  %and1937 = and i32 %or1935, %1361
  %arrayidx1938 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %1362 = load i32, ptr %arrayidx1938, align 16
  %arrayidx1939 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %1363 = load i32, ptr %arrayidx1939, align 4
  %and1940 = and i32 %1362, %1363
  %or1941 = or i32 %and1937, %and1940
  %arrayidx1943 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 5
  %1364 = load i32, ptr %arrayidx1943, align 4
  %arrayidx1944 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 0
  %1365 = load i32, ptr %arrayidx1944, align 16
  %xor1945 = xor i32 %1364, %1365
  %arrayidx1946 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 10
  %1366 = load i32, ptr %arrayidx1946, align 8
  %xor1947 = xor i32 %xor1945, %1366
  %arrayidx1948 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 8
  %1367 = load i32, ptr %arrayidx1948, align 16
  %xor1949 = xor i32 %xor1947, %1367
  %1368 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 1, i32 %xor1949) #1, !srcloc !222
  store i32 %1368, ptr %y1942, align 4
  %1369 = load i32, ptr %y1942, align 4
  store i32 %1369, ptr %tmp1950, align 4
  %1370 = load i32, ptr %tmp1950, align 4
  %arrayidx1951 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 8
  store i32 %1370, ptr %arrayidx1951, align 16
  %add1952 = add i32 %or1941, %1370
  %add1953 = add i32 %add1952, -1894007588
  %arrayidx1955 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %1371 = load i32, ptr %arrayidx1955, align 16
  %1372 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %1371) #1, !srcloc !223
  store i32 %1372, ptr %y1954, align 4
  %1373 = load i32, ptr %y1954, align 4
  store i32 %1373, ptr %tmp1956, align 4
  %1374 = load i32, ptr %tmp1956, align 4
  %add1957 = add i32 %add1953, %1374
  %arrayidx1958 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %1375 = load i32, ptr %arrayidx1958, align 4
  %add1959 = add i32 %1375, %add1957
  store i32 %add1959, ptr %arrayidx1958, align 4
  %arrayidx1961 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %1376 = load i32, ptr %arrayidx1961, align 16
  %1377 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %1376) #1, !srcloc !224
  store i32 %1377, ptr %y1960, align 4
  %1378 = load i32, ptr %y1960, align 4
  store i32 %1378, ptr %tmp1962, align 4
  %1379 = load i32, ptr %tmp1962, align 4
  %arrayidx1963 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  store i32 %1379, ptr %arrayidx1963, align 16
  %arrayidx1964 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %1380 = load i32, ptr %arrayidx1964, align 16
  %arrayidx1965 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %1381 = load i32, ptr %arrayidx1965, align 16
  %or1966 = or i32 %1380, %1381
  %arrayidx1967 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %1382 = load i32, ptr %arrayidx1967, align 4
  %and1968 = and i32 %or1966, %1382
  %arrayidx1969 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %1383 = load i32, ptr %arrayidx1969, align 16
  %arrayidx1970 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %1384 = load i32, ptr %arrayidx1970, align 16
  %and1971 = and i32 %1383, %1384
  %or1972 = or i32 %and1968, %and1971
  %arrayidx1974 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 6
  %1385 = load i32, ptr %arrayidx1974, align 8
  %arrayidx1975 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 1
  %1386 = load i32, ptr %arrayidx1975, align 4
  %xor1976 = xor i32 %1385, %1386
  %arrayidx1977 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 11
  %1387 = load i32, ptr %arrayidx1977, align 4
  %xor1978 = xor i32 %xor1976, %1387
  %arrayidx1979 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 9
  %1388 = load i32, ptr %arrayidx1979, align 4
  %xor1980 = xor i32 %xor1978, %1388
  %1389 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 1, i32 %xor1980) #1, !srcloc !225
  store i32 %1389, ptr %y1973, align 4
  %1390 = load i32, ptr %y1973, align 4
  store i32 %1390, ptr %tmp1981, align 4
  %1391 = load i32, ptr %tmp1981, align 4
  %arrayidx1982 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 9
  store i32 %1391, ptr %arrayidx1982, align 4
  %add1983 = add i32 %or1972, %1391
  %add1984 = add i32 %add1983, -1894007588
  %arrayidx1986 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %1392 = load i32, ptr %arrayidx1986, align 4
  %1393 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %1392) #1, !srcloc !226
  store i32 %1393, ptr %y1985, align 4
  %1394 = load i32, ptr %y1985, align 4
  store i32 %1394, ptr %tmp1987, align 4
  %1395 = load i32, ptr %tmp1987, align 4
  %add1988 = add i32 %add1984, %1395
  %arrayidx1989 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %1396 = load i32, ptr %arrayidx1989, align 8
  %add1990 = add i32 %1396, %add1988
  store i32 %add1990, ptr %arrayidx1989, align 8
  %arrayidx1992 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %1397 = load i32, ptr %arrayidx1992, align 16
  %1398 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %1397) #1, !srcloc !227
  store i32 %1398, ptr %y1991, align 4
  %1399 = load i32, ptr %y1991, align 4
  store i32 %1399, ptr %tmp1993, align 4
  %1400 = load i32, ptr %tmp1993, align 4
  %arrayidx1994 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  store i32 %1400, ptr %arrayidx1994, align 16
  %arrayidx1995 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %1401 = load i32, ptr %arrayidx1995, align 4
  %arrayidx1996 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %1402 = load i32, ptr %arrayidx1996, align 16
  %or1997 = or i32 %1401, %1402
  %arrayidx1998 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %1403 = load i32, ptr %arrayidx1998, align 16
  %and1999 = and i32 %or1997, %1403
  %arrayidx2000 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %1404 = load i32, ptr %arrayidx2000, align 4
  %arrayidx2001 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %1405 = load i32, ptr %arrayidx2001, align 16
  %and2002 = and i32 %1404, %1405
  %or2003 = or i32 %and1999, %and2002
  %arrayidx2005 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 7
  %1406 = load i32, ptr %arrayidx2005, align 4
  %arrayidx2006 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 2
  %1407 = load i32, ptr %arrayidx2006, align 8
  %xor2007 = xor i32 %1406, %1407
  %arrayidx2008 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 12
  %1408 = load i32, ptr %arrayidx2008, align 16
  %xor2009 = xor i32 %xor2007, %1408
  %arrayidx2010 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 10
  %1409 = load i32, ptr %arrayidx2010, align 8
  %xor2011 = xor i32 %xor2009, %1409
  %1410 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 1, i32 %xor2011) #1, !srcloc !228
  store i32 %1410, ptr %y2004, align 4
  %1411 = load i32, ptr %y2004, align 4
  store i32 %1411, ptr %tmp2012, align 4
  %1412 = load i32, ptr %tmp2012, align 4
  %arrayidx2013 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 10
  store i32 %1412, ptr %arrayidx2013, align 8
  %add2014 = add i32 %or2003, %1412
  %add2015 = add i32 %add2014, -1894007588
  %arrayidx2017 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %1413 = load i32, ptr %arrayidx2017, align 8
  %1414 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %1413) #1, !srcloc !229
  store i32 %1414, ptr %y2016, align 4
  %1415 = load i32, ptr %y2016, align 4
  store i32 %1415, ptr %tmp2018, align 4
  %1416 = load i32, ptr %tmp2018, align 4
  %add2019 = add i32 %add2015, %1416
  %arrayidx2020 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %1417 = load i32, ptr %arrayidx2020, align 4
  %add2021 = add i32 %1417, %add2019
  store i32 %add2021, ptr %arrayidx2020, align 4
  %arrayidx2023 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %1418 = load i32, ptr %arrayidx2023, align 4
  %1419 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %1418) #1, !srcloc !230
  store i32 %1419, ptr %y2022, align 4
  %1420 = load i32, ptr %y2022, align 4
  store i32 %1420, ptr %tmp2024, align 4
  %1421 = load i32, ptr %tmp2024, align 4
  %arrayidx2025 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  store i32 %1421, ptr %arrayidx2025, align 4
  %arrayidx2026 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %1422 = load i32, ptr %arrayidx2026, align 8
  %arrayidx2027 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %1423 = load i32, ptr %arrayidx2027, align 4
  %or2028 = or i32 %1422, %1423
  %arrayidx2029 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %1424 = load i32, ptr %arrayidx2029, align 16
  %and2030 = and i32 %or2028, %1424
  %arrayidx2031 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %1425 = load i32, ptr %arrayidx2031, align 8
  %arrayidx2032 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %1426 = load i32, ptr %arrayidx2032, align 4
  %and2033 = and i32 %1425, %1426
  %or2034 = or i32 %and2030, %and2033
  %arrayidx2036 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 8
  %1427 = load i32, ptr %arrayidx2036, align 16
  %arrayidx2037 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 3
  %1428 = load i32, ptr %arrayidx2037, align 4
  %xor2038 = xor i32 %1427, %1428
  %arrayidx2039 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 13
  %1429 = load i32, ptr %arrayidx2039, align 4
  %xor2040 = xor i32 %xor2038, %1429
  %arrayidx2041 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 11
  %1430 = load i32, ptr %arrayidx2041, align 4
  %xor2042 = xor i32 %xor2040, %1430
  %1431 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 1, i32 %xor2042) #1, !srcloc !231
  store i32 %1431, ptr %y2035, align 4
  %1432 = load i32, ptr %y2035, align 4
  store i32 %1432, ptr %tmp2043, align 4
  %1433 = load i32, ptr %tmp2043, align 4
  %arrayidx2044 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 11
  store i32 %1433, ptr %arrayidx2044, align 4
  %add2045 = add i32 %or2034, %1433
  %add2046 = add i32 %add2045, -1894007588
  %arrayidx2048 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %1434 = load i32, ptr %arrayidx2048, align 4
  %1435 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %1434) #1, !srcloc !232
  store i32 %1435, ptr %y2047, align 4
  %1436 = load i32, ptr %y2047, align 4
  store i32 %1436, ptr %tmp2049, align 4
  %1437 = load i32, ptr %tmp2049, align 4
  %add2050 = add i32 %add2046, %1437
  %arrayidx2051 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %1438 = load i32, ptr %arrayidx2051, align 16
  %add2052 = add i32 %1438, %add2050
  store i32 %add2052, ptr %arrayidx2051, align 16
  %arrayidx2054 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %1439 = load i32, ptr %arrayidx2054, align 8
  %1440 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %1439) #1, !srcloc !233
  store i32 %1440, ptr %y2053, align 4
  %1441 = load i32, ptr %y2053, align 4
  store i32 %1441, ptr %tmp2055, align 4
  %1442 = load i32, ptr %tmp2055, align 4
  %arrayidx2056 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  store i32 %1442, ptr %arrayidx2056, align 8
  %arrayidx2057 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %1443 = load i32, ptr %arrayidx2057, align 4
  %arrayidx2058 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %1444 = load i32, ptr %arrayidx2058, align 8
  %xor2059 = xor i32 %1443, %1444
  %arrayidx2060 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %1445 = load i32, ptr %arrayidx2060, align 4
  %xor2061 = xor i32 %xor2059, %1445
  %arrayidx2063 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 9
  %1446 = load i32, ptr %arrayidx2063, align 4
  %arrayidx2064 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 4
  %1447 = load i32, ptr %arrayidx2064, align 16
  %xor2065 = xor i32 %1446, %1447
  %arrayidx2066 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 14
  %1448 = load i32, ptr %arrayidx2066, align 8
  %xor2067 = xor i32 %xor2065, %1448
  %arrayidx2068 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 12
  %1449 = load i32, ptr %arrayidx2068, align 16
  %xor2069 = xor i32 %xor2067, %1449
  %1450 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 1, i32 %xor2069) #1, !srcloc !234
  store i32 %1450, ptr %y2062, align 4
  %1451 = load i32, ptr %y2062, align 4
  store i32 %1451, ptr %tmp2070, align 4
  %1452 = load i32, ptr %tmp2070, align 4
  %arrayidx2071 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 12
  store i32 %1452, ptr %arrayidx2071, align 16
  %add2072 = add i32 %xor2061, %1452
  %add2073 = add i32 %add2072, -899497514
  %arrayidx2075 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %1453 = load i32, ptr %arrayidx2075, align 16
  %1454 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %1453) #1, !srcloc !235
  store i32 %1454, ptr %y2074, align 4
  %1455 = load i32, ptr %y2074, align 4
  store i32 %1455, ptr %tmp2076, align 4
  %1456 = load i32, ptr %tmp2076, align 4
  %add2077 = add i32 %add2073, %1456
  %arrayidx2078 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %1457 = load i32, ptr %arrayidx2078, align 16
  %add2079 = add i32 %1457, %add2077
  store i32 %add2079, ptr %arrayidx2078, align 16
  %arrayidx2081 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %1458 = load i32, ptr %arrayidx2081, align 4
  %1459 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %1458) #1, !srcloc !236
  store i32 %1459, ptr %y2080, align 4
  %1460 = load i32, ptr %y2080, align 4
  store i32 %1460, ptr %tmp2082, align 4
  %1461 = load i32, ptr %tmp2082, align 4
  %arrayidx2083 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  store i32 %1461, ptr %arrayidx2083, align 4
  %arrayidx2084 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %1462 = load i32, ptr %arrayidx2084, align 16
  %arrayidx2085 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %1463 = load i32, ptr %arrayidx2085, align 4
  %xor2086 = xor i32 %1462, %1463
  %arrayidx2087 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %1464 = load i32, ptr %arrayidx2087, align 8
  %xor2088 = xor i32 %xor2086, %1464
  %arrayidx2090 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 10
  %1465 = load i32, ptr %arrayidx2090, align 8
  %arrayidx2091 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 5
  %1466 = load i32, ptr %arrayidx2091, align 4
  %xor2092 = xor i32 %1465, %1466
  %arrayidx2093 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 15
  %1467 = load i32, ptr %arrayidx2093, align 4
  %xor2094 = xor i32 %xor2092, %1467
  %arrayidx2095 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 13
  %1468 = load i32, ptr %arrayidx2095, align 4
  %xor2096 = xor i32 %xor2094, %1468
  %1469 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 1, i32 %xor2096) #1, !srcloc !237
  store i32 %1469, ptr %y2089, align 4
  %1470 = load i32, ptr %y2089, align 4
  store i32 %1470, ptr %tmp2097, align 4
  %1471 = load i32, ptr %tmp2097, align 4
  %arrayidx2098 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 13
  store i32 %1471, ptr %arrayidx2098, align 4
  %add2099 = add i32 %xor2088, %1471
  %add2100 = add i32 %add2099, -899497514
  %arrayidx2102 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %1472 = load i32, ptr %arrayidx2102, align 16
  %1473 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %1472) #1, !srcloc !238
  store i32 %1473, ptr %y2101, align 4
  %1474 = load i32, ptr %y2101, align 4
  store i32 %1474, ptr %tmp2103, align 4
  %1475 = load i32, ptr %tmp2103, align 4
  %add2104 = add i32 %add2100, %1475
  %arrayidx2105 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %1476 = load i32, ptr %arrayidx2105, align 4
  %add2106 = add i32 %1476, %add2104
  store i32 %add2106, ptr %arrayidx2105, align 4
  %arrayidx2108 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %1477 = load i32, ptr %arrayidx2108, align 16
  %1478 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %1477) #1, !srcloc !239
  store i32 %1478, ptr %y2107, align 4
  %1479 = load i32, ptr %y2107, align 4
  store i32 %1479, ptr %tmp2109, align 4
  %1480 = load i32, ptr %tmp2109, align 4
  %arrayidx2110 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  store i32 %1480, ptr %arrayidx2110, align 16
  %arrayidx2111 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %1481 = load i32, ptr %arrayidx2111, align 16
  %arrayidx2112 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %1482 = load i32, ptr %arrayidx2112, align 16
  %xor2113 = xor i32 %1481, %1482
  %arrayidx2114 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %1483 = load i32, ptr %arrayidx2114, align 4
  %xor2115 = xor i32 %xor2113, %1483
  %arrayidx2117 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 11
  %1484 = load i32, ptr %arrayidx2117, align 4
  %arrayidx2118 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 6
  %1485 = load i32, ptr %arrayidx2118, align 8
  %xor2119 = xor i32 %1484, %1485
  %arrayidx2120 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 0
  %1486 = load i32, ptr %arrayidx2120, align 16
  %xor2121 = xor i32 %xor2119, %1486
  %arrayidx2122 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 14
  %1487 = load i32, ptr %arrayidx2122, align 8
  %xor2123 = xor i32 %xor2121, %1487
  %1488 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 1, i32 %xor2123) #1, !srcloc !240
  store i32 %1488, ptr %y2116, align 4
  %1489 = load i32, ptr %y2116, align 4
  store i32 %1489, ptr %tmp2124, align 4
  %1490 = load i32, ptr %tmp2124, align 4
  %arrayidx2125 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 14
  store i32 %1490, ptr %arrayidx2125, align 8
  %add2126 = add i32 %xor2115, %1490
  %add2127 = add i32 %add2126, -899497514
  %arrayidx2129 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %1491 = load i32, ptr %arrayidx2129, align 4
  %1492 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %1491) #1, !srcloc !241
  store i32 %1492, ptr %y2128, align 4
  %1493 = load i32, ptr %y2128, align 4
  store i32 %1493, ptr %tmp2130, align 4
  %1494 = load i32, ptr %tmp2130, align 4
  %add2131 = add i32 %add2127, %1494
  %arrayidx2132 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %1495 = load i32, ptr %arrayidx2132, align 8
  %add2133 = add i32 %1495, %add2131
  store i32 %add2133, ptr %arrayidx2132, align 8
  %arrayidx2135 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %1496 = load i32, ptr %arrayidx2135, align 16
  %1497 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %1496) #1, !srcloc !242
  store i32 %1497, ptr %y2134, align 4
  %1498 = load i32, ptr %y2134, align 4
  store i32 %1498, ptr %tmp2136, align 4
  %1499 = load i32, ptr %tmp2136, align 4
  %arrayidx2137 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  store i32 %1499, ptr %arrayidx2137, align 16
  %arrayidx2138 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %1500 = load i32, ptr %arrayidx2138, align 4
  %arrayidx2139 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %1501 = load i32, ptr %arrayidx2139, align 16
  %xor2140 = xor i32 %1500, %1501
  %arrayidx2141 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %1502 = load i32, ptr %arrayidx2141, align 16
  %xor2142 = xor i32 %xor2140, %1502
  %arrayidx2144 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 12
  %1503 = load i32, ptr %arrayidx2144, align 16
  %arrayidx2145 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 7
  %1504 = load i32, ptr %arrayidx2145, align 4
  %xor2146 = xor i32 %1503, %1504
  %arrayidx2147 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 1
  %1505 = load i32, ptr %arrayidx2147, align 4
  %xor2148 = xor i32 %xor2146, %1505
  %arrayidx2149 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 15
  %1506 = load i32, ptr %arrayidx2149, align 4
  %xor2150 = xor i32 %xor2148, %1506
  %1507 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 1, i32 %xor2150) #1, !srcloc !243
  store i32 %1507, ptr %y2143, align 4
  %1508 = load i32, ptr %y2143, align 4
  store i32 %1508, ptr %tmp2151, align 4
  %1509 = load i32, ptr %tmp2151, align 4
  %arrayidx2152 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 15
  store i32 %1509, ptr %arrayidx2152, align 4
  %add2153 = add i32 %xor2142, %1509
  %add2154 = add i32 %add2153, -899497514
  %arrayidx2156 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %1510 = load i32, ptr %arrayidx2156, align 8
  %1511 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %1510) #1, !srcloc !244
  store i32 %1511, ptr %y2155, align 4
  %1512 = load i32, ptr %y2155, align 4
  store i32 %1512, ptr %tmp2157, align 4
  %1513 = load i32, ptr %tmp2157, align 4
  %add2158 = add i32 %add2154, %1513
  %arrayidx2159 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %1514 = load i32, ptr %arrayidx2159, align 4
  %add2160 = add i32 %1514, %add2158
  store i32 %add2160, ptr %arrayidx2159, align 4
  %arrayidx2162 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %1515 = load i32, ptr %arrayidx2162, align 4
  %1516 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %1515) #1, !srcloc !245
  store i32 %1516, ptr %y2161, align 4
  %1517 = load i32, ptr %y2161, align 4
  store i32 %1517, ptr %tmp2163, align 4
  %1518 = load i32, ptr %tmp2163, align 4
  %arrayidx2164 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  store i32 %1518, ptr %arrayidx2164, align 4
  %arrayidx2165 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %1519 = load i32, ptr %arrayidx2165, align 8
  %arrayidx2166 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %1520 = load i32, ptr %arrayidx2166, align 4
  %xor2167 = xor i32 %1519, %1520
  %arrayidx2168 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %1521 = load i32, ptr %arrayidx2168, align 16
  %xor2169 = xor i32 %xor2167, %1521
  %arrayidx2171 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 13
  %1522 = load i32, ptr %arrayidx2171, align 4
  %arrayidx2172 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 8
  %1523 = load i32, ptr %arrayidx2172, align 16
  %xor2173 = xor i32 %1522, %1523
  %arrayidx2174 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 2
  %1524 = load i32, ptr %arrayidx2174, align 8
  %xor2175 = xor i32 %xor2173, %1524
  %arrayidx2176 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 0
  %1525 = load i32, ptr %arrayidx2176, align 16
  %xor2177 = xor i32 %xor2175, %1525
  %1526 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 1, i32 %xor2177) #1, !srcloc !246
  store i32 %1526, ptr %y2170, align 4
  %1527 = load i32, ptr %y2170, align 4
  store i32 %1527, ptr %tmp2178, align 4
  %1528 = load i32, ptr %tmp2178, align 4
  %arrayidx2179 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 0
  store i32 %1528, ptr %arrayidx2179, align 16
  %add2180 = add i32 %xor2169, %1528
  %add2181 = add i32 %add2180, -899497514
  %arrayidx2183 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %1529 = load i32, ptr %arrayidx2183, align 4
  %1530 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %1529) #1, !srcloc !247
  store i32 %1530, ptr %y2182, align 4
  %1531 = load i32, ptr %y2182, align 4
  store i32 %1531, ptr %tmp2184, align 4
  %1532 = load i32, ptr %tmp2184, align 4
  %add2185 = add i32 %add2181, %1532
  %arrayidx2186 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %1533 = load i32, ptr %arrayidx2186, align 16
  %add2187 = add i32 %1533, %add2185
  store i32 %add2187, ptr %arrayidx2186, align 16
  %arrayidx2189 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %1534 = load i32, ptr %arrayidx2189, align 8
  %1535 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %1534) #1, !srcloc !248
  store i32 %1535, ptr %y2188, align 4
  %1536 = load i32, ptr %y2188, align 4
  store i32 %1536, ptr %tmp2190, align 4
  %1537 = load i32, ptr %tmp2190, align 4
  %arrayidx2191 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  store i32 %1537, ptr %arrayidx2191, align 8
  %arrayidx2192 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %1538 = load i32, ptr %arrayidx2192, align 4
  %arrayidx2193 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %1539 = load i32, ptr %arrayidx2193, align 8
  %xor2194 = xor i32 %1538, %1539
  %arrayidx2195 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %1540 = load i32, ptr %arrayidx2195, align 4
  %xor2196 = xor i32 %xor2194, %1540
  %arrayidx2198 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 14
  %1541 = load i32, ptr %arrayidx2198, align 8
  %arrayidx2199 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 9
  %1542 = load i32, ptr %arrayidx2199, align 4
  %xor2200 = xor i32 %1541, %1542
  %arrayidx2201 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 3
  %1543 = load i32, ptr %arrayidx2201, align 4
  %xor2202 = xor i32 %xor2200, %1543
  %arrayidx2203 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 1
  %1544 = load i32, ptr %arrayidx2203, align 4
  %xor2204 = xor i32 %xor2202, %1544
  %1545 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 1, i32 %xor2204) #1, !srcloc !249
  store i32 %1545, ptr %y2197, align 4
  %1546 = load i32, ptr %y2197, align 4
  store i32 %1546, ptr %tmp2205, align 4
  %1547 = load i32, ptr %tmp2205, align 4
  %arrayidx2206 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 1
  store i32 %1547, ptr %arrayidx2206, align 4
  %add2207 = add i32 %xor2196, %1547
  %add2208 = add i32 %add2207, -899497514
  %arrayidx2210 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %1548 = load i32, ptr %arrayidx2210, align 16
  %1549 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %1548) #1, !srcloc !250
  store i32 %1549, ptr %y2209, align 4
  %1550 = load i32, ptr %y2209, align 4
  store i32 %1550, ptr %tmp2211, align 4
  %1551 = load i32, ptr %tmp2211, align 4
  %add2212 = add i32 %add2208, %1551
  %arrayidx2213 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %1552 = load i32, ptr %arrayidx2213, align 16
  %add2214 = add i32 %1552, %add2212
  store i32 %add2214, ptr %arrayidx2213, align 16
  %arrayidx2216 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %1553 = load i32, ptr %arrayidx2216, align 4
  %1554 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %1553) #1, !srcloc !251
  store i32 %1554, ptr %y2215, align 4
  %1555 = load i32, ptr %y2215, align 4
  store i32 %1555, ptr %tmp2217, align 4
  %1556 = load i32, ptr %tmp2217, align 4
  %arrayidx2218 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  store i32 %1556, ptr %arrayidx2218, align 4
  %arrayidx2219 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %1557 = load i32, ptr %arrayidx2219, align 16
  %arrayidx2220 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %1558 = load i32, ptr %arrayidx2220, align 4
  %xor2221 = xor i32 %1557, %1558
  %arrayidx2222 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %1559 = load i32, ptr %arrayidx2222, align 8
  %xor2223 = xor i32 %xor2221, %1559
  %arrayidx2225 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 15
  %1560 = load i32, ptr %arrayidx2225, align 4
  %arrayidx2226 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 10
  %1561 = load i32, ptr %arrayidx2226, align 8
  %xor2227 = xor i32 %1560, %1561
  %arrayidx2228 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 4
  %1562 = load i32, ptr %arrayidx2228, align 16
  %xor2229 = xor i32 %xor2227, %1562
  %arrayidx2230 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 2
  %1563 = load i32, ptr %arrayidx2230, align 8
  %xor2231 = xor i32 %xor2229, %1563
  %1564 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 1, i32 %xor2231) #1, !srcloc !252
  store i32 %1564, ptr %y2224, align 4
  %1565 = load i32, ptr %y2224, align 4
  store i32 %1565, ptr %tmp2232, align 4
  %1566 = load i32, ptr %tmp2232, align 4
  %arrayidx2233 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 2
  store i32 %1566, ptr %arrayidx2233, align 8
  %add2234 = add i32 %xor2223, %1566
  %add2235 = add i32 %add2234, -899497514
  %arrayidx2237 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %1567 = load i32, ptr %arrayidx2237, align 16
  %1568 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %1567) #1, !srcloc !253
  store i32 %1568, ptr %y2236, align 4
  %1569 = load i32, ptr %y2236, align 4
  store i32 %1569, ptr %tmp2238, align 4
  %1570 = load i32, ptr %tmp2238, align 4
  %add2239 = add i32 %add2235, %1570
  %arrayidx2240 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %1571 = load i32, ptr %arrayidx2240, align 4
  %add2241 = add i32 %1571, %add2239
  store i32 %add2241, ptr %arrayidx2240, align 4
  %arrayidx2243 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %1572 = load i32, ptr %arrayidx2243, align 16
  %1573 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %1572) #1, !srcloc !254
  store i32 %1573, ptr %y2242, align 4
  %1574 = load i32, ptr %y2242, align 4
  store i32 %1574, ptr %tmp2244, align 4
  %1575 = load i32, ptr %tmp2244, align 4
  %arrayidx2245 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  store i32 %1575, ptr %arrayidx2245, align 16
  %arrayidx2246 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %1576 = load i32, ptr %arrayidx2246, align 16
  %arrayidx2247 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %1577 = load i32, ptr %arrayidx2247, align 16
  %xor2248 = xor i32 %1576, %1577
  %arrayidx2249 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %1578 = load i32, ptr %arrayidx2249, align 4
  %xor2250 = xor i32 %xor2248, %1578
  %arrayidx2252 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 0
  %1579 = load i32, ptr %arrayidx2252, align 16
  %arrayidx2253 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 11
  %1580 = load i32, ptr %arrayidx2253, align 4
  %xor2254 = xor i32 %1579, %1580
  %arrayidx2255 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 5
  %1581 = load i32, ptr %arrayidx2255, align 4
  %xor2256 = xor i32 %xor2254, %1581
  %arrayidx2257 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 3
  %1582 = load i32, ptr %arrayidx2257, align 4
  %xor2258 = xor i32 %xor2256, %1582
  %1583 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 1, i32 %xor2258) #1, !srcloc !255
  store i32 %1583, ptr %y2251, align 4
  %1584 = load i32, ptr %y2251, align 4
  store i32 %1584, ptr %tmp2259, align 4
  %1585 = load i32, ptr %tmp2259, align 4
  %arrayidx2260 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 3
  store i32 %1585, ptr %arrayidx2260, align 4
  %add2261 = add i32 %xor2250, %1585
  %add2262 = add i32 %add2261, -899497514
  %arrayidx2264 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %1586 = load i32, ptr %arrayidx2264, align 4
  %1587 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %1586) #1, !srcloc !256
  store i32 %1587, ptr %y2263, align 4
  %1588 = load i32, ptr %y2263, align 4
  store i32 %1588, ptr %tmp2265, align 4
  %1589 = load i32, ptr %tmp2265, align 4
  %add2266 = add i32 %add2262, %1589
  %arrayidx2267 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %1590 = load i32, ptr %arrayidx2267, align 8
  %add2268 = add i32 %1590, %add2266
  store i32 %add2268, ptr %arrayidx2267, align 8
  %arrayidx2270 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %1591 = load i32, ptr %arrayidx2270, align 16
  %1592 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %1591) #1, !srcloc !257
  store i32 %1592, ptr %y2269, align 4
  %1593 = load i32, ptr %y2269, align 4
  store i32 %1593, ptr %tmp2271, align 4
  %1594 = load i32, ptr %tmp2271, align 4
  %arrayidx2272 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  store i32 %1594, ptr %arrayidx2272, align 16
  %arrayidx2273 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %1595 = load i32, ptr %arrayidx2273, align 4
  %arrayidx2274 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %1596 = load i32, ptr %arrayidx2274, align 16
  %xor2275 = xor i32 %1595, %1596
  %arrayidx2276 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %1597 = load i32, ptr %arrayidx2276, align 16
  %xor2277 = xor i32 %xor2275, %1597
  %arrayidx2279 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 1
  %1598 = load i32, ptr %arrayidx2279, align 4
  %arrayidx2280 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 12
  %1599 = load i32, ptr %arrayidx2280, align 16
  %xor2281 = xor i32 %1598, %1599
  %arrayidx2282 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 6
  %1600 = load i32, ptr %arrayidx2282, align 8
  %xor2283 = xor i32 %xor2281, %1600
  %arrayidx2284 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 4
  %1601 = load i32, ptr %arrayidx2284, align 16
  %xor2285 = xor i32 %xor2283, %1601
  %1602 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 1, i32 %xor2285) #1, !srcloc !258
  store i32 %1602, ptr %y2278, align 4
  %1603 = load i32, ptr %y2278, align 4
  store i32 %1603, ptr %tmp2286, align 4
  %1604 = load i32, ptr %tmp2286, align 4
  %arrayidx2287 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 4
  store i32 %1604, ptr %arrayidx2287, align 16
  %add2288 = add i32 %xor2277, %1604
  %add2289 = add i32 %add2288, -899497514
  %arrayidx2291 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %1605 = load i32, ptr %arrayidx2291, align 8
  %1606 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %1605) #1, !srcloc !259
  store i32 %1606, ptr %y2290, align 4
  %1607 = load i32, ptr %y2290, align 4
  store i32 %1607, ptr %tmp2292, align 4
  %1608 = load i32, ptr %tmp2292, align 4
  %add2293 = add i32 %add2289, %1608
  %arrayidx2294 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %1609 = load i32, ptr %arrayidx2294, align 4
  %add2295 = add i32 %1609, %add2293
  store i32 %add2295, ptr %arrayidx2294, align 4
  %arrayidx2297 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %1610 = load i32, ptr %arrayidx2297, align 4
  %1611 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %1610) #1, !srcloc !260
  store i32 %1611, ptr %y2296, align 4
  %1612 = load i32, ptr %y2296, align 4
  store i32 %1612, ptr %tmp2298, align 4
  %1613 = load i32, ptr %tmp2298, align 4
  %arrayidx2299 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  store i32 %1613, ptr %arrayidx2299, align 4
  %arrayidx2300 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %1614 = load i32, ptr %arrayidx2300, align 8
  %arrayidx2301 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %1615 = load i32, ptr %arrayidx2301, align 4
  %xor2302 = xor i32 %1614, %1615
  %arrayidx2303 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %1616 = load i32, ptr %arrayidx2303, align 16
  %xor2304 = xor i32 %xor2302, %1616
  %arrayidx2306 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 2
  %1617 = load i32, ptr %arrayidx2306, align 8
  %arrayidx2307 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 13
  %1618 = load i32, ptr %arrayidx2307, align 4
  %xor2308 = xor i32 %1617, %1618
  %arrayidx2309 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 7
  %1619 = load i32, ptr %arrayidx2309, align 4
  %xor2310 = xor i32 %xor2308, %1619
  %arrayidx2311 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 5
  %1620 = load i32, ptr %arrayidx2311, align 4
  %xor2312 = xor i32 %xor2310, %1620
  %1621 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 1, i32 %xor2312) #1, !srcloc !261
  store i32 %1621, ptr %y2305, align 4
  %1622 = load i32, ptr %y2305, align 4
  store i32 %1622, ptr %tmp2313, align 4
  %1623 = load i32, ptr %tmp2313, align 4
  %arrayidx2314 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 5
  store i32 %1623, ptr %arrayidx2314, align 4
  %add2315 = add i32 %xor2304, %1623
  %add2316 = add i32 %add2315, -899497514
  %arrayidx2318 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %1624 = load i32, ptr %arrayidx2318, align 4
  %1625 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %1624) #1, !srcloc !262
  store i32 %1625, ptr %y2317, align 4
  %1626 = load i32, ptr %y2317, align 4
  store i32 %1626, ptr %tmp2319, align 4
  %1627 = load i32, ptr %tmp2319, align 4
  %add2320 = add i32 %add2316, %1627
  %arrayidx2321 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %1628 = load i32, ptr %arrayidx2321, align 16
  %add2322 = add i32 %1628, %add2320
  store i32 %add2322, ptr %arrayidx2321, align 16
  %arrayidx2324 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %1629 = load i32, ptr %arrayidx2324, align 8
  %1630 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %1629) #1, !srcloc !263
  store i32 %1630, ptr %y2323, align 4
  %1631 = load i32, ptr %y2323, align 4
  store i32 %1631, ptr %tmp2325, align 4
  %1632 = load i32, ptr %tmp2325, align 4
  %arrayidx2326 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  store i32 %1632, ptr %arrayidx2326, align 8
  %arrayidx2327 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %1633 = load i32, ptr %arrayidx2327, align 4
  %arrayidx2328 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %1634 = load i32, ptr %arrayidx2328, align 8
  %xor2329 = xor i32 %1633, %1634
  %arrayidx2330 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %1635 = load i32, ptr %arrayidx2330, align 4
  %xor2331 = xor i32 %xor2329, %1635
  %arrayidx2333 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 3
  %1636 = load i32, ptr %arrayidx2333, align 4
  %arrayidx2334 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 14
  %1637 = load i32, ptr %arrayidx2334, align 8
  %xor2335 = xor i32 %1636, %1637
  %arrayidx2336 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 8
  %1638 = load i32, ptr %arrayidx2336, align 16
  %xor2337 = xor i32 %xor2335, %1638
  %arrayidx2338 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 6
  %1639 = load i32, ptr %arrayidx2338, align 8
  %xor2339 = xor i32 %xor2337, %1639
  %1640 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 1, i32 %xor2339) #1, !srcloc !264
  store i32 %1640, ptr %y2332, align 4
  %1641 = load i32, ptr %y2332, align 4
  store i32 %1641, ptr %tmp2340, align 4
  %1642 = load i32, ptr %tmp2340, align 4
  %arrayidx2341 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 6
  store i32 %1642, ptr %arrayidx2341, align 8
  %add2342 = add i32 %xor2331, %1642
  %add2343 = add i32 %add2342, -899497514
  %arrayidx2345 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %1643 = load i32, ptr %arrayidx2345, align 16
  %1644 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %1643) #1, !srcloc !265
  store i32 %1644, ptr %y2344, align 4
  %1645 = load i32, ptr %y2344, align 4
  store i32 %1645, ptr %tmp2346, align 4
  %1646 = load i32, ptr %tmp2346, align 4
  %add2347 = add i32 %add2343, %1646
  %arrayidx2348 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %1647 = load i32, ptr %arrayidx2348, align 16
  %add2349 = add i32 %1647, %add2347
  store i32 %add2349, ptr %arrayidx2348, align 16
  %arrayidx2351 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %1648 = load i32, ptr %arrayidx2351, align 4
  %1649 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %1648) #1, !srcloc !266
  store i32 %1649, ptr %y2350, align 4
  %1650 = load i32, ptr %y2350, align 4
  store i32 %1650, ptr %tmp2352, align 4
  %1651 = load i32, ptr %tmp2352, align 4
  %arrayidx2353 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  store i32 %1651, ptr %arrayidx2353, align 4
  %arrayidx2354 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %1652 = load i32, ptr %arrayidx2354, align 16
  %arrayidx2355 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %1653 = load i32, ptr %arrayidx2355, align 4
  %xor2356 = xor i32 %1652, %1653
  %arrayidx2357 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %1654 = load i32, ptr %arrayidx2357, align 8
  %xor2358 = xor i32 %xor2356, %1654
  %arrayidx2360 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 4
  %1655 = load i32, ptr %arrayidx2360, align 16
  %arrayidx2361 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 15
  %1656 = load i32, ptr %arrayidx2361, align 4
  %xor2362 = xor i32 %1655, %1656
  %arrayidx2363 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 9
  %1657 = load i32, ptr %arrayidx2363, align 4
  %xor2364 = xor i32 %xor2362, %1657
  %arrayidx2365 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 7
  %1658 = load i32, ptr %arrayidx2365, align 4
  %xor2366 = xor i32 %xor2364, %1658
  %1659 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 1, i32 %xor2366) #1, !srcloc !267
  store i32 %1659, ptr %y2359, align 4
  %1660 = load i32, ptr %y2359, align 4
  store i32 %1660, ptr %tmp2367, align 4
  %1661 = load i32, ptr %tmp2367, align 4
  %arrayidx2368 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 7
  store i32 %1661, ptr %arrayidx2368, align 4
  %add2369 = add i32 %xor2358, %1661
  %add2370 = add i32 %add2369, -899497514
  %arrayidx2372 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %1662 = load i32, ptr %arrayidx2372, align 16
  %1663 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %1662) #1, !srcloc !268
  store i32 %1663, ptr %y2371, align 4
  %1664 = load i32, ptr %y2371, align 4
  store i32 %1664, ptr %tmp2373, align 4
  %1665 = load i32, ptr %tmp2373, align 4
  %add2374 = add i32 %add2370, %1665
  %arrayidx2375 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %1666 = load i32, ptr %arrayidx2375, align 4
  %add2376 = add i32 %1666, %add2374
  store i32 %add2376, ptr %arrayidx2375, align 4
  %arrayidx2378 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %1667 = load i32, ptr %arrayidx2378, align 16
  %1668 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %1667) #1, !srcloc !269
  store i32 %1668, ptr %y2377, align 4
  %1669 = load i32, ptr %y2377, align 4
  store i32 %1669, ptr %tmp2379, align 4
  %1670 = load i32, ptr %tmp2379, align 4
  %arrayidx2380 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  store i32 %1670, ptr %arrayidx2380, align 16
  %arrayidx2381 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %1671 = load i32, ptr %arrayidx2381, align 16
  %arrayidx2382 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %1672 = load i32, ptr %arrayidx2382, align 16
  %xor2383 = xor i32 %1671, %1672
  %arrayidx2384 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %1673 = load i32, ptr %arrayidx2384, align 4
  %xor2385 = xor i32 %xor2383, %1673
  %arrayidx2387 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 5
  %1674 = load i32, ptr %arrayidx2387, align 4
  %arrayidx2388 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 0
  %1675 = load i32, ptr %arrayidx2388, align 16
  %xor2389 = xor i32 %1674, %1675
  %arrayidx2390 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 10
  %1676 = load i32, ptr %arrayidx2390, align 8
  %xor2391 = xor i32 %xor2389, %1676
  %arrayidx2392 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 8
  %1677 = load i32, ptr %arrayidx2392, align 16
  %xor2393 = xor i32 %xor2391, %1677
  %1678 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 1, i32 %xor2393) #1, !srcloc !270
  store i32 %1678, ptr %y2386, align 4
  %1679 = load i32, ptr %y2386, align 4
  store i32 %1679, ptr %tmp2394, align 4
  %1680 = load i32, ptr %tmp2394, align 4
  %arrayidx2395 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 8
  store i32 %1680, ptr %arrayidx2395, align 16
  %add2396 = add i32 %xor2385, %1680
  %add2397 = add i32 %add2396, -899497514
  %arrayidx2399 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %1681 = load i32, ptr %arrayidx2399, align 4
  %1682 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %1681) #1, !srcloc !271
  store i32 %1682, ptr %y2398, align 4
  %1683 = load i32, ptr %y2398, align 4
  store i32 %1683, ptr %tmp2400, align 4
  %1684 = load i32, ptr %tmp2400, align 4
  %add2401 = add i32 %add2397, %1684
  %arrayidx2402 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %1685 = load i32, ptr %arrayidx2402, align 8
  %add2403 = add i32 %1685, %add2401
  store i32 %add2403, ptr %arrayidx2402, align 8
  %arrayidx2405 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %1686 = load i32, ptr %arrayidx2405, align 16
  %1687 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %1686) #1, !srcloc !272
  store i32 %1687, ptr %y2404, align 4
  %1688 = load i32, ptr %y2404, align 4
  store i32 %1688, ptr %tmp2406, align 4
  %1689 = load i32, ptr %tmp2406, align 4
  %arrayidx2407 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  store i32 %1689, ptr %arrayidx2407, align 16
  %arrayidx2408 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %1690 = load i32, ptr %arrayidx2408, align 4
  %arrayidx2409 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %1691 = load i32, ptr %arrayidx2409, align 16
  %xor2410 = xor i32 %1690, %1691
  %arrayidx2411 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %1692 = load i32, ptr %arrayidx2411, align 16
  %xor2412 = xor i32 %xor2410, %1692
  %arrayidx2414 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 6
  %1693 = load i32, ptr %arrayidx2414, align 8
  %arrayidx2415 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 1
  %1694 = load i32, ptr %arrayidx2415, align 4
  %xor2416 = xor i32 %1693, %1694
  %arrayidx2417 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 11
  %1695 = load i32, ptr %arrayidx2417, align 4
  %xor2418 = xor i32 %xor2416, %1695
  %arrayidx2419 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 9
  %1696 = load i32, ptr %arrayidx2419, align 4
  %xor2420 = xor i32 %xor2418, %1696
  %1697 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 1, i32 %xor2420) #1, !srcloc !273
  store i32 %1697, ptr %y2413, align 4
  %1698 = load i32, ptr %y2413, align 4
  store i32 %1698, ptr %tmp2421, align 4
  %1699 = load i32, ptr %tmp2421, align 4
  %arrayidx2422 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 9
  store i32 %1699, ptr %arrayidx2422, align 4
  %add2423 = add i32 %xor2412, %1699
  %add2424 = add i32 %add2423, -899497514
  %arrayidx2426 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %1700 = load i32, ptr %arrayidx2426, align 8
  %1701 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %1700) #1, !srcloc !274
  store i32 %1701, ptr %y2425, align 4
  %1702 = load i32, ptr %y2425, align 4
  store i32 %1702, ptr %tmp2427, align 4
  %1703 = load i32, ptr %tmp2427, align 4
  %add2428 = add i32 %add2424, %1703
  %arrayidx2429 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %1704 = load i32, ptr %arrayidx2429, align 4
  %add2430 = add i32 %1704, %add2428
  store i32 %add2430, ptr %arrayidx2429, align 4
  %arrayidx2432 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %1705 = load i32, ptr %arrayidx2432, align 4
  %1706 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %1705) #1, !srcloc !275
  store i32 %1706, ptr %y2431, align 4
  %1707 = load i32, ptr %y2431, align 4
  store i32 %1707, ptr %tmp2433, align 4
  %1708 = load i32, ptr %tmp2433, align 4
  %arrayidx2434 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  store i32 %1708, ptr %arrayidx2434, align 4
  %arrayidx2435 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %1709 = load i32, ptr %arrayidx2435, align 8
  %arrayidx2436 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %1710 = load i32, ptr %arrayidx2436, align 4
  %xor2437 = xor i32 %1709, %1710
  %arrayidx2438 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %1711 = load i32, ptr %arrayidx2438, align 16
  %xor2439 = xor i32 %xor2437, %1711
  %arrayidx2441 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 7
  %1712 = load i32, ptr %arrayidx2441, align 4
  %arrayidx2442 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 2
  %1713 = load i32, ptr %arrayidx2442, align 8
  %xor2443 = xor i32 %1712, %1713
  %arrayidx2444 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 12
  %1714 = load i32, ptr %arrayidx2444, align 16
  %xor2445 = xor i32 %xor2443, %1714
  %arrayidx2446 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 10
  %1715 = load i32, ptr %arrayidx2446, align 8
  %xor2447 = xor i32 %xor2445, %1715
  %1716 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 1, i32 %xor2447) #1, !srcloc !276
  store i32 %1716, ptr %y2440, align 4
  %1717 = load i32, ptr %y2440, align 4
  store i32 %1717, ptr %tmp2448, align 4
  %1718 = load i32, ptr %tmp2448, align 4
  %arrayidx2449 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 10
  store i32 %1718, ptr %arrayidx2449, align 8
  %add2450 = add i32 %xor2439, %1718
  %add2451 = add i32 %add2450, -899497514
  %arrayidx2453 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %1719 = load i32, ptr %arrayidx2453, align 4
  %1720 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %1719) #1, !srcloc !277
  store i32 %1720, ptr %y2452, align 4
  %1721 = load i32, ptr %y2452, align 4
  store i32 %1721, ptr %tmp2454, align 4
  %1722 = load i32, ptr %tmp2454, align 4
  %add2455 = add i32 %add2451, %1722
  %arrayidx2456 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %1723 = load i32, ptr %arrayidx2456, align 16
  %add2457 = add i32 %1723, %add2455
  store i32 %add2457, ptr %arrayidx2456, align 16
  %arrayidx2459 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %1724 = load i32, ptr %arrayidx2459, align 8
  %1725 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %1724) #1, !srcloc !278
  store i32 %1725, ptr %y2458, align 4
  %1726 = load i32, ptr %y2458, align 4
  store i32 %1726, ptr %tmp2460, align 4
  %1727 = load i32, ptr %tmp2460, align 4
  %arrayidx2461 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  store i32 %1727, ptr %arrayidx2461, align 8
  %arrayidx2462 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %1728 = load i32, ptr %arrayidx2462, align 4
  %arrayidx2463 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %1729 = load i32, ptr %arrayidx2463, align 8
  %xor2464 = xor i32 %1728, %1729
  %arrayidx2465 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %1730 = load i32, ptr %arrayidx2465, align 4
  %xor2466 = xor i32 %xor2464, %1730
  %arrayidx2468 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 8
  %1731 = load i32, ptr %arrayidx2468, align 16
  %arrayidx2469 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 3
  %1732 = load i32, ptr %arrayidx2469, align 4
  %xor2470 = xor i32 %1731, %1732
  %arrayidx2471 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 13
  %1733 = load i32, ptr %arrayidx2471, align 4
  %xor2472 = xor i32 %xor2470, %1733
  %arrayidx2473 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 11
  %1734 = load i32, ptr %arrayidx2473, align 4
  %xor2474 = xor i32 %xor2472, %1734
  %1735 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 1, i32 %xor2474) #1, !srcloc !279
  store i32 %1735, ptr %y2467, align 4
  %1736 = load i32, ptr %y2467, align 4
  store i32 %1736, ptr %tmp2475, align 4
  %1737 = load i32, ptr %tmp2475, align 4
  %arrayidx2476 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 11
  store i32 %1737, ptr %arrayidx2476, align 4
  %add2477 = add i32 %xor2466, %1737
  %add2478 = add i32 %add2477, -899497514
  %arrayidx2480 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %1738 = load i32, ptr %arrayidx2480, align 16
  %1739 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %1738) #1, !srcloc !280
  store i32 %1739, ptr %y2479, align 4
  %1740 = load i32, ptr %y2479, align 4
  store i32 %1740, ptr %tmp2481, align 4
  %1741 = load i32, ptr %tmp2481, align 4
  %add2482 = add i32 %add2478, %1741
  %arrayidx2483 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %1742 = load i32, ptr %arrayidx2483, align 16
  %add2484 = add i32 %1742, %add2482
  store i32 %add2484, ptr %arrayidx2483, align 16
  %arrayidx2486 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %1743 = load i32, ptr %arrayidx2486, align 4
  %1744 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %1743) #1, !srcloc !281
  store i32 %1744, ptr %y2485, align 4
  %1745 = load i32, ptr %y2485, align 4
  store i32 %1745, ptr %tmp2487, align 4
  %1746 = load i32, ptr %tmp2487, align 4
  %arrayidx2488 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  store i32 %1746, ptr %arrayidx2488, align 4
  %arrayidx2489 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %1747 = load i32, ptr %arrayidx2489, align 16
  %arrayidx2490 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %1748 = load i32, ptr %arrayidx2490, align 4
  %xor2491 = xor i32 %1747, %1748
  %arrayidx2492 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %1749 = load i32, ptr %arrayidx2492, align 8
  %xor2493 = xor i32 %xor2491, %1749
  %arrayidx2495 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 9
  %1750 = load i32, ptr %arrayidx2495, align 4
  %arrayidx2496 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 4
  %1751 = load i32, ptr %arrayidx2496, align 16
  %xor2497 = xor i32 %1750, %1751
  %arrayidx2498 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 14
  %1752 = load i32, ptr %arrayidx2498, align 8
  %xor2499 = xor i32 %xor2497, %1752
  %arrayidx2500 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 12
  %1753 = load i32, ptr %arrayidx2500, align 16
  %xor2501 = xor i32 %xor2499, %1753
  %1754 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 1, i32 %xor2501) #1, !srcloc !282
  store i32 %1754, ptr %y2494, align 4
  %1755 = load i32, ptr %y2494, align 4
  store i32 %1755, ptr %tmp2502, align 4
  %1756 = load i32, ptr %tmp2502, align 4
  %arrayidx2503 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 12
  store i32 %1756, ptr %arrayidx2503, align 16
  %add2504 = add i32 %xor2493, %1756
  %add2505 = add i32 %add2504, -899497514
  %arrayidx2507 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %1757 = load i32, ptr %arrayidx2507, align 16
  %1758 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %1757) #1, !srcloc !283
  store i32 %1758, ptr %y2506, align 4
  %1759 = load i32, ptr %y2506, align 4
  store i32 %1759, ptr %tmp2508, align 4
  %1760 = load i32, ptr %tmp2508, align 4
  %add2509 = add i32 %add2505, %1760
  %arrayidx2510 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %1761 = load i32, ptr %arrayidx2510, align 4
  %add2511 = add i32 %1761, %add2509
  store i32 %add2511, ptr %arrayidx2510, align 4
  %arrayidx2513 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %1762 = load i32, ptr %arrayidx2513, align 16
  %1763 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %1762) #1, !srcloc !284
  store i32 %1763, ptr %y2512, align 4
  %1764 = load i32, ptr %y2512, align 4
  store i32 %1764, ptr %tmp2514, align 4
  %1765 = load i32, ptr %tmp2514, align 4
  %arrayidx2515 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  store i32 %1765, ptr %arrayidx2515, align 16
  %arrayidx2516 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %1766 = load i32, ptr %arrayidx2516, align 16
  %arrayidx2517 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %1767 = load i32, ptr %arrayidx2517, align 16
  %xor2518 = xor i32 %1766, %1767
  %arrayidx2519 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %1768 = load i32, ptr %arrayidx2519, align 4
  %xor2520 = xor i32 %xor2518, %1768
  %arrayidx2522 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 10
  %1769 = load i32, ptr %arrayidx2522, align 8
  %arrayidx2523 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 5
  %1770 = load i32, ptr %arrayidx2523, align 4
  %xor2524 = xor i32 %1769, %1770
  %arrayidx2525 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 15
  %1771 = load i32, ptr %arrayidx2525, align 4
  %xor2526 = xor i32 %xor2524, %1771
  %arrayidx2527 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 13
  %1772 = load i32, ptr %arrayidx2527, align 4
  %xor2528 = xor i32 %xor2526, %1772
  %1773 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 1, i32 %xor2528) #1, !srcloc !285
  store i32 %1773, ptr %y2521, align 4
  %1774 = load i32, ptr %y2521, align 4
  store i32 %1774, ptr %tmp2529, align 4
  %1775 = load i32, ptr %tmp2529, align 4
  %arrayidx2530 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 13
  store i32 %1775, ptr %arrayidx2530, align 4
  %add2531 = add i32 %xor2520, %1775
  %add2532 = add i32 %add2531, -899497514
  %arrayidx2534 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %1776 = load i32, ptr %arrayidx2534, align 4
  %1777 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %1776) #1, !srcloc !286
  store i32 %1777, ptr %y2533, align 4
  %1778 = load i32, ptr %y2533, align 4
  store i32 %1778, ptr %tmp2535, align 4
  %1779 = load i32, ptr %tmp2535, align 4
  %add2536 = add i32 %add2532, %1779
  %arrayidx2537 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %1780 = load i32, ptr %arrayidx2537, align 8
  %add2538 = add i32 %1780, %add2536
  store i32 %add2538, ptr %arrayidx2537, align 8
  %arrayidx2540 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %1781 = load i32, ptr %arrayidx2540, align 16
  %1782 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %1781) #1, !srcloc !287
  store i32 %1782, ptr %y2539, align 4
  %1783 = load i32, ptr %y2539, align 4
  store i32 %1783, ptr %tmp2541, align 4
  %1784 = load i32, ptr %tmp2541, align 4
  %arrayidx2542 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  store i32 %1784, ptr %arrayidx2542, align 16
  %arrayidx2543 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %1785 = load i32, ptr %arrayidx2543, align 4
  %arrayidx2544 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %1786 = load i32, ptr %arrayidx2544, align 16
  %xor2545 = xor i32 %1785, %1786
  %arrayidx2546 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %1787 = load i32, ptr %arrayidx2546, align 16
  %xor2547 = xor i32 %xor2545, %1787
  %arrayidx2549 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 11
  %1788 = load i32, ptr %arrayidx2549, align 4
  %arrayidx2550 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 6
  %1789 = load i32, ptr %arrayidx2550, align 8
  %xor2551 = xor i32 %1788, %1789
  %arrayidx2552 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 0
  %1790 = load i32, ptr %arrayidx2552, align 16
  %xor2553 = xor i32 %xor2551, %1790
  %arrayidx2554 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 14
  %1791 = load i32, ptr %arrayidx2554, align 8
  %xor2555 = xor i32 %xor2553, %1791
  %1792 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 1, i32 %xor2555) #1, !srcloc !288
  store i32 %1792, ptr %y2548, align 4
  %1793 = load i32, ptr %y2548, align 4
  store i32 %1793, ptr %tmp2556, align 4
  %1794 = load i32, ptr %tmp2556, align 4
  %arrayidx2557 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 14
  store i32 %1794, ptr %arrayidx2557, align 8
  %add2558 = add i32 %xor2547, %1794
  %add2559 = add i32 %add2558, -899497514
  %arrayidx2561 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %1795 = load i32, ptr %arrayidx2561, align 8
  %1796 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %1795) #1, !srcloc !289
  store i32 %1796, ptr %y2560, align 4
  %1797 = load i32, ptr %y2560, align 4
  store i32 %1797, ptr %tmp2562, align 4
  %1798 = load i32, ptr %tmp2562, align 4
  %add2563 = add i32 %add2559, %1798
  %arrayidx2564 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %1799 = load i32, ptr %arrayidx2564, align 4
  %add2565 = add i32 %1799, %add2563
  store i32 %add2565, ptr %arrayidx2564, align 4
  %arrayidx2567 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %1800 = load i32, ptr %arrayidx2567, align 4
  %1801 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %1800) #1, !srcloc !290
  store i32 %1801, ptr %y2566, align 4
  %1802 = load i32, ptr %y2566, align 4
  store i32 %1802, ptr %tmp2568, align 4
  %1803 = load i32, ptr %tmp2568, align 4
  %arrayidx2569 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  store i32 %1803, ptr %arrayidx2569, align 4
  %arrayidx2570 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %1804 = load i32, ptr %arrayidx2570, align 8
  %arrayidx2571 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %1805 = load i32, ptr %arrayidx2571, align 4
  %xor2572 = xor i32 %1804, %1805
  %arrayidx2573 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %1806 = load i32, ptr %arrayidx2573, align 16
  %xor2574 = xor i32 %xor2572, %1806
  %arrayidx2576 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 12
  %1807 = load i32, ptr %arrayidx2576, align 16
  %arrayidx2577 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 7
  %1808 = load i32, ptr %arrayidx2577, align 4
  %xor2578 = xor i32 %1807, %1808
  %arrayidx2579 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 1
  %1809 = load i32, ptr %arrayidx2579, align 4
  %xor2580 = xor i32 %xor2578, %1809
  %arrayidx2581 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 15
  %1810 = load i32, ptr %arrayidx2581, align 4
  %xor2582 = xor i32 %xor2580, %1810
  %1811 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 1, i32 %xor2582) #1, !srcloc !291
  store i32 %1811, ptr %y2575, align 4
  %1812 = load i32, ptr %y2575, align 4
  store i32 %1812, ptr %tmp2583, align 4
  %1813 = load i32, ptr %tmp2583, align 4
  %arrayidx2584 = getelementptr inbounds [16 x i32], ptr %block, i64 0, i64 15
  store i32 %1813, ptr %arrayidx2584, align 4
  %add2585 = add i32 %xor2574, %1813
  %add2586 = add i32 %add2585, -899497514
  %arrayidx2588 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %1814 = load i32, ptr %arrayidx2588, align 4
  %1815 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %1814) #1, !srcloc !292
  store i32 %1815, ptr %y2587, align 4
  %1816 = load i32, ptr %y2587, align 4
  store i32 %1816, ptr %tmp2589, align 4
  %1817 = load i32, ptr %tmp2589, align 4
  %add2590 = add i32 %add2586, %1817
  %arrayidx2591 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %1818 = load i32, ptr %arrayidx2591, align 16
  %add2592 = add i32 %1818, %add2590
  store i32 %add2592, ptr %arrayidx2591, align 16
  %arrayidx2594 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %1819 = load i32, ptr %arrayidx2594, align 8
  %1820 = call i32 asm "rorl $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags}"(i32 2, i32 %1819) #1, !srcloc !293
  store i32 %1820, ptr %y2593, align 4
  %1821 = load i32, ptr %y2593, align 4
  store i32 %1821, ptr %tmp2595, align 4
  %1822 = load i32, ptr %tmp2595, align 4
  %arrayidx2596 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  store i32 %1822, ptr %arrayidx2596, align 8
  %arrayidx2597 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 0
  %1823 = load i32, ptr %arrayidx2597, align 16
  %1824 = load ptr, ptr %state.addr, align 8
  %arrayidx2598 = getelementptr inbounds i32, ptr %1824, i64 0
  %1825 = load i32, ptr %arrayidx2598, align 4
  %add2599 = add i32 %1825, %1823
  store i32 %add2599, ptr %arrayidx2598, align 4
  %arrayidx2600 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 1
  %1826 = load i32, ptr %arrayidx2600, align 4
  %1827 = load ptr, ptr %state.addr, align 8
  %arrayidx2601 = getelementptr inbounds i32, ptr %1827, i64 1
  %1828 = load i32, ptr %arrayidx2601, align 4
  %add2602 = add i32 %1828, %1826
  store i32 %add2602, ptr %arrayidx2601, align 4
  %arrayidx2603 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 2
  %1829 = load i32, ptr %arrayidx2603, align 8
  %1830 = load ptr, ptr %state.addr, align 8
  %arrayidx2604 = getelementptr inbounds i32, ptr %1830, i64 2
  %1831 = load i32, ptr %arrayidx2604, align 4
  %add2605 = add i32 %1831, %1829
  store i32 %add2605, ptr %arrayidx2604, align 4
  %arrayidx2606 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 3
  %1832 = load i32, ptr %arrayidx2606, align 4
  %1833 = load ptr, ptr %state.addr, align 8
  %arrayidx2607 = getelementptr inbounds i32, ptr %1833, i64 3
  %1834 = load i32, ptr %arrayidx2607, align 4
  %add2608 = add i32 %1834, %1832
  store i32 %add2608, ptr %arrayidx2607, align 4
  %arrayidx2609 = getelementptr inbounds [5 x i32], ptr %qq, i64 0, i64 4
  %1835 = load i32, ptr %arrayidx2609, align 16
  %1836 = load ptr, ptr %state.addr, align 8
  %arrayidx2610 = getelementptr inbounds i32, ptr %1836, i64 4
  %1837 = load i32, ptr %arrayidx2610, align 4
  %add2611 = add i32 %1837, %1835
  store i32 %add2611, ptr %arrayidx2610, align 4
  ret void
}

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = !{i64 2150270429}
!7 = !{i64 2150270557}
!8 = !{i64 2150270680}
!9 = !{i64 2150270798}
!10 = !{i64 2150271144}
!11 = !{i64 2150271272}
!12 = !{i64 2150271395}
!13 = !{i64 2150271513}
!14 = !{i64 2150271859}
!15 = !{i64 2150271987}
!16 = !{i64 2150272110}
!17 = !{i64 2150272228}
!18 = !{i64 2150272574}
!19 = !{i64 2150272702}
!20 = !{i64 2150272825}
!21 = !{i64 2150272943}
!22 = !{i64 2150273289}
!23 = !{i64 2150273417}
!24 = !{i64 2150273540}
!25 = !{i64 2150273658}
!26 = !{i64 2150274004}
!27 = !{i64 2150274132}
!28 = !{i64 2150274255}
!29 = !{i64 2150274373}
!30 = !{i64 2150274719}
!31 = !{i64 2150274847}
!32 = !{i64 2150274970}
!33 = !{i64 2150275088}
!34 = !{i64 2150275434}
!35 = !{i64 2150275562}
!36 = !{i64 2150275685}
!37 = !{i64 2150275803}
!38 = !{i64 2150276149}
!39 = !{i64 2150276277}
!40 = !{i64 2150276400}
!41 = !{i64 2150276518}
!42 = !{i64 2150276864}
!43 = !{i64 2150276992}
!44 = !{i64 2150277115}
!45 = !{i64 2150277233}
!46 = !{i64 2150277584}
!47 = !{i64 2150277714}
!48 = !{i64 2150277838}
!49 = !{i64 2150277956}
!50 = !{i64 2150278307}
!51 = !{i64 2150278437}
!52 = !{i64 2150278561}
!53 = !{i64 2150278679}
!54 = !{i64 2150279030}
!55 = !{i64 2150279160}
!56 = !{i64 2150279284}
!57 = !{i64 2150279402}
!58 = !{i64 2150279753}
!59 = !{i64 2150279883}
!60 = !{i64 2150280007}
!61 = !{i64 2150280125}
!62 = !{i64 2150280476}
!63 = !{i64 2150280606}
!64 = !{i64 2150280730}
!65 = !{i64 2150280848}
!66 = !{i64 2150281199}
!67 = !{i64 2150281329}
!68 = !{i64 2150281453}
!69 = !{i64 2150281571}
!70 = !{i64 2150281839}
!71 = !{i64 2150281957}
!72 = !{i64 2150282225}
!73 = !{i64 2150282343}
!74 = !{i64 2150282611}
!75 = !{i64 2150282729}
!76 = !{i64 2150282997}
!77 = !{i64 2150283115}
!78 = !{i64 2150283383}
!79 = !{i64 2150283501}
!80 = !{i64 2150283769}
!81 = !{i64 2150283887}
!82 = !{i64 2150284155}
!83 = !{i64 2150284273}
!84 = !{i64 2150284541}
!85 = !{i64 2150284659}
!86 = !{i64 2150284927}
!87 = !{i64 2150285045}
!88 = !{i64 2150285313}
!89 = !{i64 2150285431}
!90 = !{i64 2150285701}
!91 = !{i64 2150285819}
!92 = !{i64 2150286089}
!93 = !{i64 2150286207}
!94 = !{i64 2150286477}
!95 = !{i64 2150286595}
!96 = !{i64 2150286865}
!97 = !{i64 2150286983}
!98 = !{i64 2150287253}
!99 = !{i64 2150287371}
!100 = !{i64 2150287641}
!101 = !{i64 2150287759}
!102 = !{i64 2150288194}
!103 = !{i64 2150288386}
!104 = !{i64 2150288504}
!105 = !{i64 2150288939}
!106 = !{i64 2150289131}
!107 = !{i64 2150289249}
!108 = !{i64 2150289684}
!109 = !{i64 2150289876}
!110 = !{i64 2150289994}
!111 = !{i64 2150290429}
!112 = !{i64 2150290621}
!113 = !{i64 2150290739}
!114 = !{i64 2150291162}
!115 = !{i64 2150291354}
!116 = !{i64 2150291472}
!117 = !{i64 2150291895}
!118 = !{i64 2150292087}
!119 = !{i64 2150292205}
!120 = !{i64 2150292628}
!121 = !{i64 2150292820}
!122 = !{i64 2150292938}
!123 = !{i64 2150293361}
!124 = !{i64 2150293553}
!125 = !{i64 2150293671}
!126 = !{i64 2150294094}
!127 = !{i64 2150294286}
!128 = !{i64 2150294404}
!129 = !{i64 2150294827}
!130 = !{i64 2150295019}
!131 = !{i64 2150295137}
!132 = !{i64 2150295560}
!133 = !{i64 2150295752}
!134 = !{i64 2150295870}
!135 = !{i64 2150296293}
!136 = !{i64 2150296485}
!137 = !{i64 2150296603}
!138 = !{i64 2150297026}
!139 = !{i64 2150297218}
!140 = !{i64 2150297336}
!141 = !{i64 2150297759}
!142 = !{i64 2150297951}
!143 = !{i64 2150298069}
!144 = !{i64 2150298492}
!145 = !{i64 2150298684}
!146 = !{i64 2150298802}
!147 = !{i64 2150299225}
!148 = !{i64 2150299417}
!149 = !{i64 2150299535}
!150 = !{i64 2150299958}
!151 = !{i64 2150300150}
!152 = !{i64 2150300268}
!153 = !{i64 2150300691}
!154 = !{i64 2150300883}
!155 = !{i64 2150301001}
!156 = !{i64 2150301424}
!157 = !{i64 2150301616}
!158 = !{i64 2150301734}
!159 = !{i64 2150302157}
!160 = !{i64 2150302349}
!161 = !{i64 2150302467}
!162 = !{i64 2150302890}
!163 = !{i64 2150303082}
!164 = !{i64 2150303200}
!165 = !{i64 2150303623}
!166 = !{i64 2150303815}
!167 = !{i64 2150303933}
!168 = !{i64 2150304356}
!169 = !{i64 2150304548}
!170 = !{i64 2150304666}
!171 = !{i64 2150305089}
!172 = !{i64 2150305281}
!173 = !{i64 2150305399}
!174 = !{i64 2150305844}
!175 = !{i64 2150306036}
!176 = !{i64 2150306154}
!177 = !{i64 2150306599}
!178 = !{i64 2150306791}
!179 = !{i64 2150306909}
!180 = !{i64 2150307354}
!181 = !{i64 2150307546}
!182 = !{i64 2150307664}
!183 = !{i64 2150308109}
!184 = !{i64 2150308301}
!185 = !{i64 2150308419}
!186 = !{i64 2150308864}
!187 = !{i64 2150309056}
!188 = !{i64 2150309174}
!189 = !{i64 2150309619}
!190 = !{i64 2150309811}
!191 = !{i64 2150309929}
!192 = !{i64 2150310374}
!193 = !{i64 2150310566}
!194 = !{i64 2150310684}
!195 = !{i64 2150311129}
!196 = !{i64 2150311321}
!197 = !{i64 2150311439}
!198 = !{i64 2150311884}
!199 = !{i64 2150312076}
!200 = !{i64 2150312194}
!201 = !{i64 2150312639}
!202 = !{i64 2150312831}
!203 = !{i64 2150312949}
!204 = !{i64 2150313394}
!205 = !{i64 2150313586}
!206 = !{i64 2150313704}
!207 = !{i64 2150314149}
!208 = !{i64 2150314341}
!209 = !{i64 2150314459}
!210 = !{i64 2150314904}
!211 = !{i64 2150315096}
!212 = !{i64 2150315214}
!213 = !{i64 2150315659}
!214 = !{i64 2150315851}
!215 = !{i64 2150315969}
!216 = !{i64 2150316414}
!217 = !{i64 2150316606}
!218 = !{i64 2150316724}
!219 = !{i64 2150317169}
!220 = !{i64 2150317361}
!221 = !{i64 2150317479}
!222 = !{i64 2150317924}
!223 = !{i64 2150318116}
!224 = !{i64 2150318234}
!225 = !{i64 2150318679}
!226 = !{i64 2150318871}
!227 = !{i64 2150318989}
!228 = !{i64 2150319434}
!229 = !{i64 2150319626}
!230 = !{i64 2150319744}
!231 = !{i64 2150320189}
!232 = !{i64 2150320381}
!233 = !{i64 2150320499}
!234 = !{i64 2150320922}
!235 = !{i64 2150321114}
!236 = !{i64 2150321232}
!237 = !{i64 2150321655}
!238 = !{i64 2150321847}
!239 = !{i64 2150321965}
!240 = !{i64 2150322388}
!241 = !{i64 2150322580}
!242 = !{i64 2150322698}
!243 = !{i64 2150323121}
!244 = !{i64 2150323313}
!245 = !{i64 2150323431}
!246 = !{i64 2150323854}
!247 = !{i64 2150324046}
!248 = !{i64 2150324164}
!249 = !{i64 2150324587}
!250 = !{i64 2150324779}
!251 = !{i64 2150324897}
!252 = !{i64 2150325320}
!253 = !{i64 2150325512}
!254 = !{i64 2150325630}
!255 = !{i64 2150326053}
!256 = !{i64 2150326245}
!257 = !{i64 2150326363}
!258 = !{i64 2150326786}
!259 = !{i64 2150326978}
!260 = !{i64 2150327096}
!261 = !{i64 2150327519}
!262 = !{i64 2150327711}
!263 = !{i64 2150327829}
!264 = !{i64 2150328252}
!265 = !{i64 2150328444}
!266 = !{i64 2150328562}
!267 = !{i64 2150328985}
!268 = !{i64 2150329177}
!269 = !{i64 2150329295}
!270 = !{i64 2150329718}
!271 = !{i64 2150329910}
!272 = !{i64 2150330028}
!273 = !{i64 2150330451}
!274 = !{i64 2150330643}
!275 = !{i64 2150330761}
!276 = !{i64 2150331184}
!277 = !{i64 2150331376}
!278 = !{i64 2150331494}
!279 = !{i64 2150331917}
!280 = !{i64 2150332109}
!281 = !{i64 2150332227}
!282 = !{i64 2150332650}
!283 = !{i64 2150332842}
!284 = !{i64 2150332960}
!285 = !{i64 2150333383}
!286 = !{i64 2150333575}
!287 = !{i64 2150333693}
!288 = !{i64 2150334116}
!289 = !{i64 2150334308}
!290 = !{i64 2150334426}
!291 = !{i64 2150334849}
!292 = !{i64 2150335041}
!293 = !{i64 2150335159}
