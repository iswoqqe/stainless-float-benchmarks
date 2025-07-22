; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!711 () Bool)

(assert start!711)

(declare-fun lt!1496 () (_ BitVec 32))

(declare-datatypes ((Unit!147 0))(
  ( (Unit!148) )
))
(declare-datatypes ((array!140 0))(
  ( (array!141 (arr!63 (Array (_ BitVec 32) (_ BitVec 32))) (size!63 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!72 0))(
  ( (tuple4!73 (_1!80 Unit!147) (_2!80 array!140) (_3!68 (_ BitVec 32)) (_4!36 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!1495 () tuple4!72)

(declare-fun jz!42 () (_ BitVec 32))

(declare-datatypes ((array!142 0))(
  ( (array!143 (arr!64 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!64 (_ BitVec 32))) )
))
(declare-fun q!70 () array!142)

(declare-datatypes ((tuple4!74 0))(
  ( (tuple4!75 (_1!81 Unit!147) (_2!81 (_ BitVec 32)) (_3!69 array!140) (_4!37 (_ BitVec 32))) )
))
(declare-fun e!1109 () tuple4!74)

(declare-fun lt!1491 () (_ BitVec 32))

(declare-fun b!1948 () Bool)

(declare-fun computeModuloWhile!1 ((_ BitVec 32) array!142 (_ BitVec 32) array!140 (_ BitVec 32)) tuple4!74)

(assert (=> b!1948 (= e!1109 (computeModuloWhile!1 jz!42 q!70 lt!1496 (_2!80 lt!1495) lt!1491))))

(declare-fun b!1949 () Bool)

(declare-fun e!1111 () Bool)

(declare-fun e!1107 () Bool)

(assert (=> b!1949 (= e!1111 e!1107)))

(declare-fun res!1588 () Bool)

(assert (=> b!1949 (=> (not res!1588) (not e!1107))))

(declare-fun lt!1489 () (_ FloatingPoint 11 53))

(assert (=> b!1949 (= res!1588 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!1489) (fp.lt lt!1489 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1949 (= lt!1489 (fp.sub roundNearestTiesToEven (_4!36 lt!1495) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!36 lt!1495) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!36 lt!1495) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!36 lt!1495) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!36 lt!1495) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(declare-fun e!1108 () tuple4!72)

(assert (=> b!1949 (= lt!1495 e!1108)))

(declare-fun c!389 () Bool)

(assert (=> b!1949 (= c!389 (bvsgt jz!42 #b00000000000000000000000000000000))))

(declare-fun lt!1490 () (_ FloatingPoint 11 53))

(assert (=> b!1949 (= lt!1490 (select (arr!64 q!70) jz!42))))

(declare-fun lt!1492 () array!140)

(assert (=> b!1949 (= lt!1492 (array!141 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!1950 () Bool)

(declare-fun e!1106 () Bool)

(declare-fun lt!1494 () tuple4!74)

(declare-fun lt!1493 () (_ BitVec 32))

(assert (=> b!1950 (= e!1106 (and (= (_4!37 lt!1494) #b00000000000000000000000000000000) (not (= #b00000000000000000000000000000000 (bvand lt!1493 #b10000000000000000000000000000000))) (not (= #b00000000000000000000000000000000 (bvand (bvsub #b00000001000000000000000000000000 lt!1493) #b10000000000000000000000000000000)))))))

(assert (=> b!1950 (= lt!1493 (select (arr!63 (_3!69 lt!1494)) (bvsub jz!42 #b00000000000000000000000000000001)))))

(assert (=> b!1950 (= lt!1494 e!1109)))

(declare-fun c!388 () Bool)

(assert (=> b!1950 (= c!388 (bvslt lt!1496 (bvsub jz!42 #b00000000000000000000000000000001)))))

(assert (=> b!1950 (= lt!1496 #b00000000000000000000000000000000)))

(declare-fun b!1951 () Bool)

(declare-fun Unit!149 () Unit!147)

(assert (=> b!1951 (= e!1108 (tuple4!73 Unit!149 lt!1492 jz!42 lt!1490))))

(declare-fun res!1587 () Bool)

(assert (=> start!711 (=> (not res!1587) (not e!1111))))

(assert (=> start!711 (= res!1587 (and (bvsle #b00000000000000000000000000000010 jz!42) (bvslt jz!42 #b00000000000000000000000000010011)))))

(assert (=> start!711 e!1111))

(assert (=> start!711 true))

(declare-fun array_inv!28 (array!142) Bool)

(assert (=> start!711 (array_inv!28 q!70)))

(declare-fun b!1952 () Bool)

(declare-fun Unit!150 () Unit!147)

(assert (=> b!1952 (= e!1109 (tuple4!75 Unit!150 lt!1496 (_2!80 lt!1495) lt!1491))))

(declare-fun b!1953 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!142 array!140 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!72)

(assert (=> b!1953 (= e!1108 (computeModuloWhile!0 jz!42 q!70 lt!1492 jz!42 lt!1490))))

(declare-fun b!1954 () Bool)

(declare-fun res!1586 () Bool)

(assert (=> b!1954 (=> (not res!1586) (not e!1111))))

(declare-fun qInv!0 (array!142) Bool)

(assert (=> b!1954 (= res!1586 (qInv!0 q!70))))

(declare-fun b!1955 () Bool)

(assert (=> b!1955 (= e!1107 e!1106)))

(declare-fun res!1585 () Bool)

(assert (=> b!1955 (=> (not res!1585) (not e!1106))))

(assert (=> b!1955 (= res!1585 (bvsge (select (arr!63 (_2!80 lt!1495)) (bvsub jz!42 #b00000000000000000000000000000001)) #b00000000100000000000000000000000))))

(assert (=> b!1955 (= lt!1491 #b00000000000000000000000000000000)))

(assert (= (and start!711 res!1587) b!1954))

(assert (= (and b!1954 res!1586) b!1949))

(assert (= (and b!1949 c!389) b!1953))

(assert (= (and b!1949 (not c!389)) b!1951))

(assert (= (and b!1949 res!1588) b!1955))

(assert (= (and b!1955 res!1585) b!1950))

(assert (= (and b!1950 c!388) b!1948))

(assert (= (and b!1950 (not c!388)) b!1952))

(declare-fun m!2185 () Bool)

(assert (=> b!1950 m!2185))

(declare-fun m!2187 () Bool)

(assert (=> b!1955 m!2187))

(declare-fun m!2189 () Bool)

(assert (=> b!1949 m!2189))

(declare-fun m!2191 () Bool)

(assert (=> b!1948 m!2191))

(declare-fun m!2193 () Bool)

(assert (=> b!1953 m!2193))

(declare-fun m!2195 () Bool)

(assert (=> start!711 m!2195))

(declare-fun m!2197 () Bool)

(assert (=> b!1954 m!2197))

(check-sat (not start!711) (not b!1953) (not b!1948) (not b!1954))
(check-sat)
(get-model)

(declare-fun d!903 () Bool)

(assert (=> d!903 (= (array_inv!28 q!70) (bvsge (size!64 q!70) #b00000000000000000000000000000000))))

(assert (=> start!711 d!903))

(declare-fun b!1968 () Bool)

(declare-fun res!1597 () Bool)

(declare-fun e!1120 () Bool)

(assert (=> b!1968 (=> (not res!1597) (not e!1120))))

(declare-fun iqInv!0 (array!140) Bool)

(assert (=> b!1968 (= res!1597 (iqInv!0 lt!1492))))

(declare-fun b!1969 () Bool)

(declare-fun e!1118 () Bool)

(declare-fun lt!1507 () tuple4!72)

(assert (=> b!1969 (= e!1118 (bvsle (_3!68 lt!1507) #b00000000000000000000000000000000))))

(declare-fun lt!1508 () (_ FloatingPoint 11 53))

(declare-fun e!1119 () tuple4!72)

(declare-fun b!1970 () Bool)

(declare-fun lt!1511 () (_ BitVec 32))

(declare-fun lt!1510 () array!140)

(declare-fun Unit!151 () Unit!147)

(assert (=> b!1970 (= e!1119 (tuple4!73 Unit!151 lt!1510 lt!1511 lt!1508))))

(declare-fun b!1971 () Bool)

(assert (=> b!1971 (= e!1119 (computeModuloWhile!0 jz!42 q!70 lt!1510 lt!1511 lt!1508))))

(declare-fun b!1972 () Bool)

(declare-fun res!1598 () Bool)

(assert (=> b!1972 (=> (not res!1598) (not e!1118))))

(assert (=> b!1972 (= res!1598 (iqInv!0 (_2!80 lt!1507)))))

(declare-fun b!1973 () Bool)

(assert (=> b!1973 (= e!1120 (bvsgt jz!42 #b00000000000000000000000000000000))))

(declare-fun d!905 () Bool)

(assert (=> d!905 e!1118))

(declare-fun res!1600 () Bool)

(assert (=> d!905 (=> (not res!1600) (not e!1118))))

(assert (=> d!905 (= res!1600 (and true true (bvsle #b00000000000000000000000000000000 (_3!68 lt!1507)) (bvsle (_3!68 lt!1507) jz!42) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (_4!36 lt!1507)) (fp.leq (_4!36 lt!1507) (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(assert (=> d!905 (= lt!1507 e!1119)))

(declare-fun c!392 () Bool)

(assert (=> d!905 (= c!392 (bvsgt lt!1511 #b00000000000000000000000000000000))))

(assert (=> d!905 (= lt!1511 (bvsub jz!42 #b00000000000000000000000000000001))))

(declare-fun lt!1509 () (_ FloatingPoint 11 53))

(assert (=> d!905 (= lt!1508 (fp.add roundNearestTiesToEven (select (arr!64 q!70) (bvsub jz!42 #b00000000000000000000000000000001)) lt!1509))))

(assert (=> d!905 (= lt!1510 (array!141 (store (arr!63 lt!1492) (bvsub jz!42 jz!42) (ite (fp.isNaN (fp.sub roundNearestTiesToEven lt!1490 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!1509))) #b00000000000000000000000000000000 (ite (fp.gt (fp.sub roundNearestTiesToEven lt!1490 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!1509)) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.sub roundNearestTiesToEven lt!1490 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!1509)) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.sub roundNearestTiesToEven lt!1490 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!1509))))))) (size!63 lt!1492)))))

(assert (=> d!905 (= lt!1509 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!1490)) #b00000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!1490) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!1490) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!1490)))))))))

(assert (=> d!905 e!1120))

(declare-fun res!1599 () Bool)

(assert (=> d!905 (=> (not res!1599) (not e!1120))))

(assert (=> d!905 (= res!1599 (and (bvsle #b00000000000000000000000000000000 jz!42) (bvsle jz!42 jz!42) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!1490) (fp.leq lt!1490 (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(assert (=> d!905 (= (computeModuloWhile!0 jz!42 q!70 lt!1492 jz!42 lt!1490) lt!1507)))

(assert (= (and d!905 res!1599) b!1968))

(assert (= (and b!1968 res!1597) b!1973))

(assert (= (and d!905 c!392) b!1971))

(assert (= (and d!905 (not c!392)) b!1970))

(assert (= (and d!905 res!1600) b!1972))

(assert (= (and b!1972 res!1598) b!1969))

(declare-fun m!2199 () Bool)

(assert (=> b!1968 m!2199))

(declare-fun m!2201 () Bool)

(assert (=> b!1971 m!2201))

(declare-fun m!2203 () Bool)

(assert (=> b!1972 m!2203))

(declare-fun m!2205 () Bool)

(assert (=> d!905 m!2205))

(declare-fun m!2207 () Bool)

(assert (=> d!905 m!2207))

(assert (=> b!1953 d!905))

(declare-fun b!1994 () Bool)

(declare-fun e!1130 () tuple4!72)

(declare-fun lt!1536 () (_ FloatingPoint 11 53))

(declare-fun lt!1537 () array!140)

(assert (=> b!1994 (= e!1130 (computeModuloWhile!0 jz!42 q!70 lt!1537 jz!42 lt!1536))))

(declare-fun b!1995 () Bool)

(declare-fun res!1614 () Bool)

(declare-fun e!1131 () Bool)

(assert (=> b!1995 (=> (not res!1614) (not e!1131))))

(assert (=> b!1995 (= res!1614 (iqInv!0 (_2!80 lt!1495)))))

(declare-fun d!907 () Bool)

(declare-fun e!1129 () Bool)

(assert (=> d!907 e!1129))

(declare-fun res!1617 () Bool)

(assert (=> d!907 (=> (not res!1617) (not e!1129))))

(declare-fun lt!1538 () tuple4!74)

(assert (=> d!907 (= res!1617 (and (or (bvsgt #b00000000000000000000000000000000 (_2!81 lt!1538)) (= (bvand jz!42 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (= (bvand jz!42 #b10000000000000000000000000000000) (bvand (bvsub jz!42 #b00000000000000000000000000000001) #b10000000000000000000000000000000))) (bvsle #b00000000000000000000000000000000 (_2!81 lt!1538)) (bvsle (_2!81 lt!1538) (bvsub jz!42 #b00000000000000000000000000000001))))))

(declare-fun e!1132 () tuple4!74)

(assert (=> d!907 (= lt!1538 e!1132)))

(declare-fun c!398 () Bool)

(declare-fun lt!1533 () (_ BitVec 32))

(assert (=> d!907 (= c!398 (bvslt lt!1533 (bvsub jz!42 #b00000000000000000000000000000001)))))

(assert (=> d!907 (= lt!1533 (bvadd lt!1496 #b00000000000000000000000000000001))))

(declare-fun lt!1531 () (_ BitVec 32))

(declare-fun lt!1535 () (_ BitVec 32))

(assert (=> d!907 (= lt!1531 (ite (and (= lt!1491 #b00000000000000000000000000000000) (not (= lt!1535 #b00000000000000000000000000000000))) #b00000000000000000000000000000001 lt!1491))))

(declare-fun lt!1532 () array!140)

(assert (=> d!907 (= lt!1532 (array!141 (store (arr!63 (_2!80 lt!1495)) lt!1496 (ite (= lt!1491 #b00000000000000000000000000000000) (ite (not (= lt!1535 #b00000000000000000000000000000000)) (bvsub #b00000001000000000000000000000000 lt!1535) #b00000000000000000000000000000000) (bvsub #b00000000111111111111111111111111 lt!1535))) (size!63 (_2!80 lt!1495))))))

(assert (=> d!907 (= lt!1535 (select (arr!63 (_2!80 lt!1495)) lt!1496))))

(assert (=> d!907 e!1131))

(declare-fun res!1613 () Bool)

(assert (=> d!907 (=> (not res!1613) (not e!1131))))

(assert (=> d!907 (= res!1613 (and (bvsle #b00000000000000000000000000000000 lt!1496) (bvsle lt!1496 (bvsub jz!42 #b00000000000000000000000000000001))))))

(declare-fun lt!1534 () tuple4!72)

(assert (=> d!907 (= lt!1534 e!1130)))

(declare-fun c!397 () Bool)

(assert (=> d!907 (= c!397 (bvsgt jz!42 #b00000000000000000000000000000000))))

(assert (=> d!907 (= lt!1536 (select (arr!64 q!70) jz!42))))

(assert (=> d!907 (= lt!1537 (array!141 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(assert (=> d!907 (= (computeModuloWhile!1 jz!42 q!70 lt!1496 (_2!80 lt!1495) lt!1491) lt!1538)))

(declare-fun b!1996 () Bool)

(assert (=> b!1996 (= e!1132 (computeModuloWhile!1 jz!42 q!70 lt!1533 lt!1532 lt!1531))))

(declare-fun b!1997 () Bool)

(declare-fun res!1618 () Bool)

(assert (=> b!1997 (=> (not res!1618) (not e!1129))))

(assert (=> b!1997 (= res!1618 (or (= (_4!37 lt!1538) #b00000000000000000000000000000000) (= (_4!37 lt!1538) #b00000000000000000000000000000001)))))

(declare-fun b!1998 () Bool)

(declare-fun res!1616 () Bool)

(assert (=> b!1998 (=> (not res!1616) (not e!1129))))

(assert (=> b!1998 (= res!1616 (iqInv!0 (_3!69 lt!1538)))))

(declare-fun b!1999 () Bool)

(declare-fun Unit!152 () Unit!147)

(assert (=> b!1999 (= e!1130 (tuple4!73 Unit!152 lt!1537 jz!42 lt!1536))))

(declare-fun b!2000 () Bool)

(assert (=> b!2000 (= e!1131 (and (bvsge (select (arr!63 (_2!80 lt!1495)) (bvsub jz!42 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= lt!1491 #b00000000000000000000000000000000) (= lt!1491 #b00000000000000000000000000000001)) (bvslt lt!1496 (bvsub jz!42 #b00000000000000000000000000000001))))))

(declare-fun b!2001 () Bool)

(declare-fun res!1615 () Bool)

(assert (=> b!2001 (=> (not res!1615) (not e!1129))))

(declare-fun lt!1530 () (_ BitVec 32))

(assert (=> b!2001 (= res!1615 (bvsge (select (arr!63 (_3!69 lt!1538)) lt!1530) #b00000000100000000000000000000000))))

(assert (=> b!2001 (and (bvsge lt!1530 #b00000000000000000000000000000000) (bvslt lt!1530 (size!63 (_3!69 lt!1538))))))

(assert (=> b!2001 (= lt!1530 (bvsub jz!42 #b00000000000000000000000000000001))))

(assert (=> b!2001 (or (= (bvand jz!42 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (= (bvand jz!42 #b10000000000000000000000000000000) (bvand (bvsub jz!42 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))

(declare-fun b!2002 () Bool)

(assert (=> b!2002 (= e!1129 (bvsge (_2!81 lt!1538) (bvsub jz!42 #b00000000000000000000000000000001)))))

(assert (=> b!2002 (or (= (bvand jz!42 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (= (bvand jz!42 #b10000000000000000000000000000000) (bvand (bvsub jz!42 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))

(declare-fun b!2003 () Bool)

(declare-fun Unit!153 () Unit!147)

(assert (=> b!2003 (= e!1132 (tuple4!75 Unit!153 lt!1533 lt!1532 lt!1531))))

(assert (= (and d!907 c!397) b!1994))

(assert (= (and d!907 (not c!397)) b!1999))

(assert (= (and d!907 res!1613) b!1995))

(assert (= (and b!1995 res!1614) b!2000))

(assert (= (and d!907 c!398) b!1996))

(assert (= (and d!907 (not c!398)) b!2003))

(assert (= (and d!907 res!1617) b!1998))

(assert (= (and b!1998 res!1616) b!2001))

(assert (= (and b!2001 res!1615) b!1997))

(assert (= (and b!1997 res!1618) b!2002))

(declare-fun m!2209 () Bool)

(assert (=> b!2001 m!2209))

(declare-fun m!2211 () Bool)

(assert (=> b!1994 m!2211))

(declare-fun m!2213 () Bool)

(assert (=> b!1998 m!2213))

(assert (=> b!2000 m!2187))

(declare-fun m!2215 () Bool)

(assert (=> d!907 m!2215))

(declare-fun m!2217 () Bool)

(assert (=> d!907 m!2217))

(assert (=> d!907 m!2189))

(declare-fun m!2219 () Bool)

(assert (=> b!1995 m!2219))

(declare-fun m!2221 () Bool)

(assert (=> b!1996 m!2221))

(assert (=> b!1948 d!907))

(declare-fun d!909 () Bool)

(declare-fun res!1621 () Bool)

(declare-fun e!1135 () Bool)

(assert (=> d!909 (=> (not res!1621) (not e!1135))))

(assert (=> d!909 (= res!1621 (= (size!64 q!70) #b00000000000000000000000000010100))))

(assert (=> d!909 (= (qInv!0 q!70) e!1135)))

(declare-fun b!2006 () Bool)

(declare-fun lambda!74 () Int)

(declare-fun all20!0 (array!142 Int) Bool)

(assert (=> b!2006 (= e!1135 (all20!0 q!70 lambda!74))))

(assert (= (and d!909 res!1621) b!2006))

(declare-fun m!2223 () Bool)

(assert (=> b!2006 m!2223))

(assert (=> b!1954 d!909))

(check-sat (not b!1994) (not b!1996) (not b!1995) (not b!2006) (not b!1968) (not b!1998) (not b!1971) (not b!1972))
(check-sat)
