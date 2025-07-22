; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!721 () Bool)

(assert start!721)

(declare-datatypes ((Unit!154 0))(
  ( (Unit!155) )
))
(declare-datatypes ((array!145 0))(
  ( (array!146 (arr!65 (Array (_ BitVec 32) (_ BitVec 32))) (size!65 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!76 0))(
  ( (tuple4!77 (_1!82 Unit!154) (_2!82 (_ BitVec 32)) (_3!70 array!145) (_4!38 (_ BitVec 32))) )
))
(declare-fun e!1148 () tuple4!76)

(declare-fun lt!1558 () (_ BitVec 32))

(declare-fun lt!1559 () (_ BitVec 32))

(declare-fun b!2023 () Bool)

(declare-datatypes ((tuple4!78 0))(
  ( (tuple4!79 (_1!83 Unit!154) (_2!83 array!145) (_3!71 (_ BitVec 32)) (_4!39 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!1562 () tuple4!78)

(declare-fun Unit!156 () Unit!154)

(assert (=> b!2023 (= e!1148 (tuple4!77 Unit!156 lt!1558 (_2!83 lt!1562) lt!1559))))

(declare-fun b!2024 () Bool)

(declare-fun e!1150 () Bool)

(declare-fun lt!1556 () tuple4!76)

(declare-fun lt!1557 () (_ BitVec 32))

(assert (=> b!2024 (= e!1150 (and (not (= (_4!38 lt!1556) #b00000000000000000000000000000000)) (not (= #b00000000000000000000000000000000 (bvand lt!1557 #b10000000000000000000000000000000))) (not (= #b00000000000000000000000000000000 (bvand (bvsub #b00000000111111111111111111111111 lt!1557) #b10000000000000000000000000000000)))))))

(declare-fun jz!42 () (_ BitVec 32))

(assert (=> b!2024 (= lt!1557 (select (arr!65 (_3!70 lt!1556)) (bvsub jz!42 #b00000000000000000000000000000001)))))

(assert (=> b!2024 (= lt!1556 e!1148)))

(declare-fun c!404 () Bool)

(assert (=> b!2024 (= c!404 (bvslt lt!1558 (bvsub jz!42 #b00000000000000000000000000000001)))))

(assert (=> b!2024 (= lt!1558 #b00000000000000000000000000000000)))

(declare-fun lt!1561 () array!145)

(declare-fun e!1151 () tuple4!78)

(declare-fun lt!1560 () (_ FloatingPoint 11 53))

(declare-fun b!2025 () Bool)

(declare-fun Unit!157 () Unit!154)

(assert (=> b!2025 (= e!1151 (tuple4!79 Unit!157 lt!1561 jz!42 lt!1560))))

(declare-fun b!2026 () Bool)

(declare-datatypes ((array!147 0))(
  ( (array!148 (arr!66 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!66 (_ BitVec 32))) )
))
(declare-fun q!70 () array!147)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!147 array!145 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!78)

(assert (=> b!2026 (= e!1151 (computeModuloWhile!0 jz!42 q!70 lt!1561 jz!42 lt!1560))))

(declare-fun b!2027 () Bool)

(declare-fun e!1152 () Bool)

(assert (=> b!2027 (= e!1152 e!1150)))

(declare-fun res!1633 () Bool)

(assert (=> b!2027 (=> (not res!1633) (not e!1150))))

(assert (=> b!2027 (= res!1633 (bvsge (select (arr!65 (_2!83 lt!1562)) (bvsub jz!42 #b00000000000000000000000000000001)) #b00000000100000000000000000000000))))

(assert (=> b!2027 (= lt!1559 #b00000000000000000000000000000000)))

(declare-fun b!2028 () Bool)

(declare-fun res!1631 () Bool)

(declare-fun e!1153 () Bool)

(assert (=> b!2028 (=> (not res!1631) (not e!1153))))

(declare-fun qInv!0 (array!147) Bool)

(assert (=> b!2028 (= res!1631 (qInv!0 q!70))))

(declare-fun res!1630 () Bool)

(assert (=> start!721 (=> (not res!1630) (not e!1153))))

(assert (=> start!721 (= res!1630 (and (bvsle #b00000000000000000000000000000010 jz!42) (bvslt jz!42 #b00000000000000000000000000010011)))))

(assert (=> start!721 e!1153))

(assert (=> start!721 true))

(declare-fun array_inv!29 (array!147) Bool)

(assert (=> start!721 (array_inv!29 q!70)))

(declare-fun b!2029 () Bool)

(assert (=> b!2029 (= e!1153 e!1152)))

(declare-fun res!1632 () Bool)

(assert (=> b!2029 (=> (not res!1632) (not e!1152))))

(declare-fun lt!1555 () (_ FloatingPoint 11 53))

(assert (=> b!2029 (= res!1632 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!1555) (fp.lt lt!1555 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> b!2029 (= lt!1555 (fp.sub roundNearestTiesToEven (_4!39 lt!1562) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!39 lt!1562) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!39 lt!1562) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!39 lt!1562) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!39 lt!1562) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!2029 (= lt!1562 e!1151)))

(declare-fun c!403 () Bool)

(assert (=> b!2029 (= c!403 (bvsgt jz!42 #b00000000000000000000000000000000))))

(assert (=> b!2029 (= lt!1560 (select (arr!66 q!70) jz!42))))

(assert (=> b!2029 (= lt!1561 (array!146 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!2030 () Bool)

(declare-fun computeModuloWhile!1 ((_ BitVec 32) array!147 (_ BitVec 32) array!145 (_ BitVec 32)) tuple4!76)

(assert (=> b!2030 (= e!1148 (computeModuloWhile!1 jz!42 q!70 lt!1558 (_2!83 lt!1562) lt!1559))))

(assert (= (and start!721 res!1630) b!2028))

(assert (= (and b!2028 res!1631) b!2029))

(assert (= (and b!2029 c!403) b!2026))

(assert (= (and b!2029 (not c!403)) b!2025))

(assert (= (and b!2029 res!1632) b!2027))

(assert (= (and b!2027 res!1633) b!2024))

(assert (= (and b!2024 c!404) b!2030))

(assert (= (and b!2024 (not c!404)) b!2023))

(declare-fun m!2225 () Bool)

(assert (=> b!2028 m!2225))

(declare-fun m!2227 () Bool)

(assert (=> b!2024 m!2227))

(declare-fun m!2229 () Bool)

(assert (=> b!2026 m!2229))

(declare-fun m!2231 () Bool)

(assert (=> start!721 m!2231))

(declare-fun m!2233 () Bool)

(assert (=> b!2030 m!2233))

(declare-fun m!2235 () Bool)

(assert (=> b!2027 m!2235))

(declare-fun m!2237 () Bool)

(assert (=> b!2029 m!2237))

(check-sat (not b!2028) (not b!2026) (not start!721) (not b!2030))
(check-sat)
(get-model)

(declare-fun d!911 () Bool)

(declare-fun res!1636 () Bool)

(declare-fun e!1156 () Bool)

(assert (=> d!911 (=> (not res!1636) (not e!1156))))

(assert (=> d!911 (= res!1636 (= (size!66 q!70) #b00000000000000000000000000010100))))

(assert (=> d!911 (= (qInv!0 q!70) e!1156)))

(declare-fun b!2033 () Bool)

(declare-fun lambda!77 () Int)

(declare-fun all20!0 (array!147 Int) Bool)

(assert (=> b!2033 (= e!1156 (all20!0 q!70 lambda!77))))

(assert (= (and d!911 res!1636) b!2033))

(declare-fun m!2239 () Bool)

(assert (=> b!2033 m!2239))

(assert (=> b!2028 d!911))

(declare-fun b!2047 () Bool)

(declare-fun e!1163 () tuple4!78)

(declare-fun lt!1575 () array!145)

(declare-fun lt!1576 () (_ FloatingPoint 11 53))

(declare-fun lt!1577 () (_ BitVec 32))

(assert (=> b!2047 (= e!1163 (computeModuloWhile!0 jz!42 q!70 lt!1575 lt!1577 lt!1576))))

(declare-fun b!2048 () Bool)

(declare-fun e!1164 () Bool)

(declare-fun lt!1574 () tuple4!78)

(assert (=> b!2048 (= e!1164 (bvsle (_3!71 lt!1574) #b00000000000000000000000000000000))))

(declare-fun b!2049 () Bool)

(declare-fun res!1645 () Bool)

(assert (=> b!2049 (=> (not res!1645) (not e!1164))))

(declare-fun iqInv!0 (array!145) Bool)

(assert (=> b!2049 (= res!1645 (iqInv!0 (_2!83 lt!1574)))))

(declare-fun b!2050 () Bool)

(declare-fun res!1648 () Bool)

(declare-fun e!1165 () Bool)

(assert (=> b!2050 (=> (not res!1648) (not e!1165))))

(assert (=> b!2050 (= res!1648 (iqInv!0 lt!1561))))

(declare-fun b!2051 () Bool)

(declare-fun Unit!158 () Unit!154)

(assert (=> b!2051 (= e!1163 (tuple4!79 Unit!158 lt!1575 lt!1577 lt!1576))))

(declare-fun d!913 () Bool)

(assert (=> d!913 e!1164))

(declare-fun res!1647 () Bool)

(assert (=> d!913 (=> (not res!1647) (not e!1164))))

(assert (=> d!913 (= res!1647 (and true true (bvsle #b00000000000000000000000000000000 (_3!71 lt!1574)) (bvsle (_3!71 lt!1574) jz!42) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (_4!39 lt!1574)) (fp.leq (_4!39 lt!1574) (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(assert (=> d!913 (= lt!1574 e!1163)))

(declare-fun c!407 () Bool)

(assert (=> d!913 (= c!407 (bvsgt lt!1577 #b00000000000000000000000000000000))))

(assert (=> d!913 (= lt!1577 (bvsub jz!42 #b00000000000000000000000000000001))))

(declare-fun lt!1573 () (_ FloatingPoint 11 53))

(assert (=> d!913 (= lt!1576 (fp.add roundNearestTiesToEven (select (arr!66 q!70) (bvsub jz!42 #b00000000000000000000000000000001)) lt!1573))))

(assert (=> d!913 (= lt!1575 (array!146 (store (arr!65 lt!1561) (bvsub jz!42 jz!42) (ite (fp.isNaN (fp.sub roundNearestTiesToEven lt!1560 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!1573))) #b00000000000000000000000000000000 (ite (fp.gt (fp.sub roundNearestTiesToEven lt!1560 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!1573)) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.sub roundNearestTiesToEven lt!1560 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!1573)) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.sub roundNearestTiesToEven lt!1560 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!1573))))))) (size!65 lt!1561)))))

(assert (=> d!913 (= lt!1573 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!1560)) #b00000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!1560) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!1560) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!1560)))))))))

(assert (=> d!913 e!1165))

(declare-fun res!1646 () Bool)

(assert (=> d!913 (=> (not res!1646) (not e!1165))))

(assert (=> d!913 (= res!1646 (and (bvsle #b00000000000000000000000000000000 jz!42) (bvsle jz!42 jz!42) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!1560) (fp.leq lt!1560 (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(assert (=> d!913 (= (computeModuloWhile!0 jz!42 q!70 lt!1561 jz!42 lt!1560) lt!1574)))

(declare-fun b!2046 () Bool)

(assert (=> b!2046 (= e!1165 (bvsgt jz!42 #b00000000000000000000000000000000))))

(assert (= (and d!913 res!1646) b!2050))

(assert (= (and b!2050 res!1648) b!2046))

(assert (= (and d!913 c!407) b!2047))

(assert (= (and d!913 (not c!407)) b!2051))

(assert (= (and d!913 res!1647) b!2049))

(assert (= (and b!2049 res!1645) b!2048))

(declare-fun m!2241 () Bool)

(assert (=> b!2047 m!2241))

(declare-fun m!2243 () Bool)

(assert (=> b!2049 m!2243))

(declare-fun m!2245 () Bool)

(assert (=> b!2050 m!2245))

(declare-fun m!2247 () Bool)

(assert (=> d!913 m!2247))

(declare-fun m!2249 () Bool)

(assert (=> d!913 m!2249))

(assert (=> b!2026 d!913))

(declare-fun d!915 () Bool)

(assert (=> d!915 (= (array_inv!29 q!70) (bvsge (size!66 q!70) #b00000000000000000000000000000000))))

(assert (=> start!721 d!915))

(declare-fun b!2072 () Bool)

(declare-fun lt!1602 () array!145)

(declare-fun lt!1598 () (_ BitVec 32))

(declare-fun lt!1603 () (_ BitVec 32))

(declare-fun e!1175 () tuple4!76)

(declare-fun Unit!159 () Unit!154)

(assert (=> b!2072 (= e!1175 (tuple4!77 Unit!159 lt!1598 lt!1602 lt!1603))))

(declare-fun d!917 () Bool)

(declare-fun e!1177 () Bool)

(assert (=> d!917 e!1177))

(declare-fun res!1661 () Bool)

(assert (=> d!917 (=> (not res!1661) (not e!1177))))

(declare-fun lt!1604 () tuple4!76)

(assert (=> d!917 (= res!1661 (and (or (bvsgt #b00000000000000000000000000000000 (_2!82 lt!1604)) (= (bvand jz!42 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (= (bvand jz!42 #b10000000000000000000000000000000) (bvand (bvsub jz!42 #b00000000000000000000000000000001) #b10000000000000000000000000000000))) (bvsle #b00000000000000000000000000000000 (_2!82 lt!1604)) (bvsle (_2!82 lt!1604) (bvsub jz!42 #b00000000000000000000000000000001))))))

(assert (=> d!917 (= lt!1604 e!1175)))

(declare-fun c!413 () Bool)

(assert (=> d!917 (= c!413 (bvslt lt!1598 (bvsub jz!42 #b00000000000000000000000000000001)))))

(assert (=> d!917 (= lt!1598 (bvadd lt!1558 #b00000000000000000000000000000001))))

(declare-fun lt!1597 () (_ BitVec 32))

(assert (=> d!917 (= lt!1603 (ite (and (= lt!1559 #b00000000000000000000000000000000) (not (= lt!1597 #b00000000000000000000000000000000))) #b00000000000000000000000000000001 lt!1559))))

(assert (=> d!917 (= lt!1602 (array!146 (store (arr!65 (_2!83 lt!1562)) lt!1558 (ite (= lt!1559 #b00000000000000000000000000000000) (ite (not (= lt!1597 #b00000000000000000000000000000000)) (bvsub #b00000001000000000000000000000000 lt!1597) #b00000000000000000000000000000000) (bvsub #b00000000111111111111111111111111 lt!1597))) (size!65 (_2!83 lt!1562))))))

(assert (=> d!917 (= lt!1597 (select (arr!65 (_2!83 lt!1562)) lt!1558))))

(declare-fun e!1174 () Bool)

(assert (=> d!917 e!1174))

(declare-fun res!1662 () Bool)

(assert (=> d!917 (=> (not res!1662) (not e!1174))))

(assert (=> d!917 (= res!1662 (and (bvsle #b00000000000000000000000000000000 lt!1558) (bvsle lt!1558 (bvsub jz!42 #b00000000000000000000000000000001))))))

(declare-fun lt!1596 () tuple4!78)

(declare-fun e!1176 () tuple4!78)

(assert (=> d!917 (= lt!1596 e!1176)))

(declare-fun c!412 () Bool)

(assert (=> d!917 (= c!412 (bvsgt jz!42 #b00000000000000000000000000000000))))

(declare-fun lt!1600 () (_ FloatingPoint 11 53))

(assert (=> d!917 (= lt!1600 (select (arr!66 q!70) jz!42))))

(declare-fun lt!1599 () array!145)

(assert (=> d!917 (= lt!1599 (array!146 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(assert (=> d!917 (= (computeModuloWhile!1 jz!42 q!70 lt!1558 (_2!83 lt!1562) lt!1559) lt!1604)))

(declare-fun b!2073 () Bool)

(declare-fun Unit!160 () Unit!154)

(assert (=> b!2073 (= e!1176 (tuple4!79 Unit!160 lt!1599 jz!42 lt!1600))))

(declare-fun b!2074 () Bool)

(assert (=> b!2074 (= e!1177 (bvsge (_2!82 lt!1604) (bvsub jz!42 #b00000000000000000000000000000001)))))

(assert (=> b!2074 (or (= (bvand jz!42 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (= (bvand jz!42 #b10000000000000000000000000000000) (bvand (bvsub jz!42 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))

(declare-fun b!2075 () Bool)

(assert (=> b!2075 (= e!1176 (computeModuloWhile!0 jz!42 q!70 lt!1599 jz!42 lt!1600))))

(declare-fun b!2076 () Bool)

(declare-fun res!1664 () Bool)

(assert (=> b!2076 (=> (not res!1664) (not e!1177))))

(assert (=> b!2076 (= res!1664 (iqInv!0 (_3!70 lt!1604)))))

(declare-fun b!2077 () Bool)

(declare-fun res!1663 () Bool)

(assert (=> b!2077 (=> (not res!1663) (not e!1174))))

(assert (=> b!2077 (= res!1663 (iqInv!0 (_2!83 lt!1562)))))

(declare-fun b!2078 () Bool)

(assert (=> b!2078 (= e!1174 (and (bvsge (select (arr!65 (_2!83 lt!1562)) (bvsub jz!42 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= lt!1559 #b00000000000000000000000000000000) (= lt!1559 #b00000000000000000000000000000001)) (bvslt lt!1558 (bvsub jz!42 #b00000000000000000000000000000001))))))

(declare-fun b!2079 () Bool)

(assert (=> b!2079 (= e!1175 (computeModuloWhile!1 jz!42 q!70 lt!1598 lt!1602 lt!1603))))

(declare-fun b!2080 () Bool)

(declare-fun res!1666 () Bool)

(assert (=> b!2080 (=> (not res!1666) (not e!1177))))

(declare-fun lt!1601 () (_ BitVec 32))

(assert (=> b!2080 (= res!1666 (bvsge (select (arr!65 (_3!70 lt!1604)) lt!1601) #b00000000100000000000000000000000))))

(assert (=> b!2080 (and (bvsge lt!1601 #b00000000000000000000000000000000) (bvslt lt!1601 (size!65 (_3!70 lt!1604))))))

(assert (=> b!2080 (= lt!1601 (bvsub jz!42 #b00000000000000000000000000000001))))

(assert (=> b!2080 (or (= (bvand jz!42 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (= (bvand jz!42 #b10000000000000000000000000000000) (bvand (bvsub jz!42 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))

(declare-fun b!2081 () Bool)

(declare-fun res!1665 () Bool)

(assert (=> b!2081 (=> (not res!1665) (not e!1177))))

(assert (=> b!2081 (= res!1665 (or (= (_4!38 lt!1604) #b00000000000000000000000000000000) (= (_4!38 lt!1604) #b00000000000000000000000000000001)))))

(assert (= (and d!917 c!412) b!2075))

(assert (= (and d!917 (not c!412)) b!2073))

(assert (= (and d!917 res!1662) b!2077))

(assert (= (and b!2077 res!1663) b!2078))

(assert (= (and d!917 c!413) b!2079))

(assert (= (and d!917 (not c!413)) b!2072))

(assert (= (and d!917 res!1661) b!2076))

(assert (= (and b!2076 res!1664) b!2080))

(assert (= (and b!2080 res!1666) b!2081))

(assert (= (and b!2081 res!1665) b!2074))

(declare-fun m!2251 () Bool)

(assert (=> b!2077 m!2251))

(declare-fun m!2253 () Bool)

(assert (=> b!2075 m!2253))

(declare-fun m!2255 () Bool)

(assert (=> b!2076 m!2255))

(declare-fun m!2257 () Bool)

(assert (=> b!2079 m!2257))

(declare-fun m!2259 () Bool)

(assert (=> b!2080 m!2259))

(assert (=> b!2078 m!2235))

(declare-fun m!2261 () Bool)

(assert (=> d!917 m!2261))

(declare-fun m!2263 () Bool)

(assert (=> d!917 m!2263))

(assert (=> d!917 m!2237))

(assert (=> b!2030 d!917))

(check-sat (not b!2049) (not b!2047) (not b!2033) (not b!2079) (not b!2076) (not b!2075) (not b!2050) (not b!2077))
(check-sat)
