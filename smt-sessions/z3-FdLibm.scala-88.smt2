; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!729 () Bool)

(assert start!729)

(declare-fun b!2391 () Bool)

(declare-fun jz!42 () (_ BitVec 32))

(declare-datatypes ((Unit!169 0))(
  ( (Unit!170) )
))
(declare-datatypes ((array!145 0))(
  ( (array!146 (arr!65 (Array (_ BitVec 32) (_ BitVec 32))) (size!65 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!76 0))(
  ( (tuple4!77 (_1!82 Unit!169) (_2!82 array!145) (_3!70 (_ BitVec 32)) (_4!38 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!1630 () tuple4!76)

(declare-datatypes ((array!147 0))(
  ( (array!148 (arr!66 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!66 (_ BitVec 32))) )
))
(declare-fun q!70 () array!147)

(declare-fun lt!1632 () (_ BitVec 32))

(declare-datatypes ((tuple4!78 0))(
  ( (tuple4!79 (_1!83 Unit!169) (_2!83 (_ BitVec 32)) (_3!71 array!145) (_4!39 (_ BitVec 32))) )
))
(declare-fun e!1224 () tuple4!78)

(declare-fun lt!1634 () (_ BitVec 32))

(declare-fun computeModuloWhile!1 ((_ BitVec 32) array!147 (_ BitVec 32) array!145 (_ BitVec 32)) tuple4!78)

(assert (=> b!2391 (= e!1224 (computeModuloWhile!1 jz!42 q!70 lt!1634 (_2!82 lt!1630) lt!1632))))

(declare-fun res!1971 () Bool)

(declare-fun e!1221 () Bool)

(assert (=> start!729 (=> (not res!1971) (not e!1221))))

(assert (=> start!729 (= res!1971 (and (bvsle #b00000000000000000000000000000010 jz!42) (bvslt jz!42 #b00000000000000000000000000010011)))))

(assert (=> start!729 e!1221))

(assert (=> start!729 true))

(declare-fun array_inv!29 (array!147) Bool)

(assert (=> start!729 (array_inv!29 q!70)))

(declare-fun b!2392 () Bool)

(declare-fun e!1220 () Bool)

(assert (=> b!2392 (= e!1221 e!1220)))

(declare-fun res!1970 () Bool)

(assert (=> b!2392 (=> (not res!1970) (not e!1220))))

(declare-fun lt!1631 () (_ FloatingPoint 11 53))

(assert (=> b!2392 (= res!1970 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!1631) (fp.lt lt!1631 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> b!2392 (= lt!1631 (fp.sub roundNearestTiesToEven (_4!38 lt!1630) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!38 lt!1630) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!38 lt!1630) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!38 lt!1630) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!38 lt!1630) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(declare-fun e!1219 () tuple4!76)

(assert (=> b!2392 (= lt!1630 e!1219)))

(declare-fun c!419 () Bool)

(assert (=> b!2392 (= c!419 (bvsgt jz!42 #b00000000000000000000000000000000))))

(declare-fun lt!1633 () (_ FloatingPoint 11 53))

(assert (=> b!2392 (= lt!1633 (select (arr!66 q!70) jz!42))))

(declare-fun lt!1629 () array!145)

(assert (=> b!2392 (= lt!1629 (array!146 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!2393 () Bool)

(declare-fun Unit!171 () Unit!169)

(assert (=> b!2393 (= e!1219 (tuple4!77 Unit!171 lt!1629 jz!42 lt!1633))))

(declare-fun b!2394 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!147 array!145 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!76)

(assert (=> b!2394 (= e!1219 (computeModuloWhile!0 jz!42 q!70 lt!1629 jz!42 lt!1633))))

(declare-fun b!2395 () Bool)

(declare-fun e!1223 () Bool)

(declare-fun lt!1627 () tuple4!78)

(declare-fun lt!1628 () (_ BitVec 32))

(assert (=> b!2395 (= e!1223 (and (not (= (_4!39 lt!1627) #b00000000000000000000000000000000)) (not (= #b00000000000000000000000000000000 (bvand lt!1628 #b10000000000000000000000000000000))) (not (= #b00000000000000000000000000000000 (bvand (bvsub #b00000000111111111111111111111111 lt!1628) #b10000000000000000000000000000000)))))))

(assert (=> b!2395 (= lt!1628 (select (arr!65 (_3!71 lt!1627)) (bvsub jz!42 #b00000000000000000000000000000001)))))

(assert (=> b!2395 (= lt!1627 e!1224)))

(declare-fun c!418 () Bool)

(assert (=> b!2395 (= c!418 (bvslt lt!1634 (bvsub jz!42 #b00000000000000000000000000000001)))))

(assert (=> b!2395 (= lt!1634 #b00000000000000000000000000000000)))

(declare-fun b!2396 () Bool)

(assert (=> b!2396 (= e!1220 e!1223)))

(declare-fun res!1969 () Bool)

(assert (=> b!2396 (=> (not res!1969) (not e!1223))))

(assert (=> b!2396 (= res!1969 (bvsge (select (arr!65 (_2!82 lt!1630)) (bvsub jz!42 #b00000000000000000000000000000001)) #b00000000100000000000000000000000))))

(assert (=> b!2396 (= lt!1632 #b00000000000000000000000000000000)))

(declare-fun b!2397 () Bool)

(declare-fun Unit!172 () Unit!169)

(assert (=> b!2397 (= e!1224 (tuple4!79 Unit!172 lt!1634 (_2!82 lt!1630) lt!1632))))

(declare-fun b!2398 () Bool)

(declare-fun res!1968 () Bool)

(assert (=> b!2398 (=> (not res!1968) (not e!1221))))

(declare-fun qInv!0 (array!147) Bool)

(assert (=> b!2398 (= res!1968 (qInv!0 q!70))))

(assert (= (and start!729 res!1971) b!2398))

(assert (= (and b!2398 res!1968) b!2392))

(assert (= (and b!2392 c!419) b!2394))

(assert (= (and b!2392 (not c!419)) b!2393))

(assert (= (and b!2392 res!1970) b!2396))

(assert (= (and b!2396 res!1969) b!2395))

(assert (= (and b!2395 c!418) b!2391))

(assert (= (and b!2395 (not c!418)) b!2397))

(declare-fun m!3833 () Bool)

(assert (=> b!2398 m!3833))

(declare-fun m!3835 () Bool)

(assert (=> b!2395 m!3835))

(declare-fun m!3837 () Bool)

(assert (=> start!729 m!3837))

(declare-fun m!3839 () Bool)

(assert (=> b!2392 m!3839))

(declare-fun m!3841 () Bool)

(assert (=> b!2396 m!3841))

(declare-fun m!3843 () Bool)

(assert (=> b!2394 m!3843))

(declare-fun m!3845 () Bool)

(assert (=> b!2391 m!3845))

(check-sat (not b!2391) (not b!2398) (not b!2394) (not start!729))
(check-sat)
(get-model)

(declare-fun d!1595 () Bool)

(declare-fun e!1234 () Bool)

(assert (=> d!1595 e!1234))

(declare-fun res!1984 () Bool)

(assert (=> d!1595 (=> (not res!1984) (not e!1234))))

(declare-fun lt!1654 () tuple4!78)

(assert (=> d!1595 (= res!1984 (and (or (bvsgt #b00000000000000000000000000000000 (_2!83 lt!1654)) (= (bvand jz!42 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (= (bvand jz!42 #b10000000000000000000000000000000) (bvand (bvsub jz!42 #b00000000000000000000000000000001) #b10000000000000000000000000000000))) (bvsle #b00000000000000000000000000000000 (_2!83 lt!1654)) (bvsle (_2!83 lt!1654) (bvsub jz!42 #b00000000000000000000000000000001))))))

(declare-fun e!1236 () tuple4!78)

(assert (=> d!1595 (= lt!1654 e!1236)))

(declare-fun c!424 () Bool)

(declare-fun lt!1657 () (_ BitVec 32))

(assert (=> d!1595 (= c!424 (bvslt lt!1657 (bvsub jz!42 #b00000000000000000000000000000001)))))

(assert (=> d!1595 (= lt!1657 (bvadd lt!1634 #b00000000000000000000000000000001))))

(declare-fun lt!1656 () (_ BitVec 32))

(declare-fun lt!1660 () (_ BitVec 32))

(assert (=> d!1595 (= lt!1656 (ite (and (= lt!1632 #b00000000000000000000000000000000) (not (= lt!1660 #b00000000000000000000000000000000))) #b00000000000000000000000000000001 lt!1632))))

(declare-fun lt!1661 () array!145)

(assert (=> d!1595 (= lt!1661 (array!146 (store (arr!65 (_2!82 lt!1630)) lt!1634 (ite (= lt!1632 #b00000000000000000000000000000000) (ite (not (= lt!1660 #b00000000000000000000000000000000)) (bvsub #b00000001000000000000000000000000 lt!1660) #b00000000000000000000000000000000) (bvsub #b00000000111111111111111111111111 lt!1660))) (size!65 (_2!82 lt!1630))))))

(assert (=> d!1595 (= lt!1660 (select (arr!65 (_2!82 lt!1630)) lt!1634))))

(declare-fun e!1235 () Bool)

(assert (=> d!1595 e!1235))

(declare-fun res!1989 () Bool)

(assert (=> d!1595 (=> (not res!1989) (not e!1235))))

(assert (=> d!1595 (= res!1989 (and (bvsle #b00000000000000000000000000000000 lt!1634) (bvsle lt!1634 (bvsub jz!42 #b00000000000000000000000000000001))))))

(declare-fun lt!1655 () tuple4!76)

(declare-fun e!1233 () tuple4!76)

(assert (=> d!1595 (= lt!1655 e!1233)))

(declare-fun c!425 () Bool)

(assert (=> d!1595 (= c!425 (bvsgt jz!42 #b00000000000000000000000000000000))))

(declare-fun lt!1658 () (_ FloatingPoint 11 53))

(assert (=> d!1595 (= lt!1658 (select (arr!66 q!70) jz!42))))

(declare-fun lt!1653 () array!145)

(assert (=> d!1595 (= lt!1653 (array!146 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(assert (=> d!1595 (= (computeModuloWhile!1 jz!42 q!70 lt!1634 (_2!82 lt!1630) lt!1632) lt!1654)))

(declare-fun b!2419 () Bool)

(declare-fun Unit!173 () Unit!169)

(assert (=> b!2419 (= e!1233 (tuple4!77 Unit!173 lt!1653 jz!42 lt!1658))))

(declare-fun b!2420 () Bool)

(declare-fun Unit!174 () Unit!169)

(assert (=> b!2420 (= e!1236 (tuple4!79 Unit!174 lt!1657 lt!1661 lt!1656))))

(declare-fun b!2421 () Bool)

(assert (=> b!2421 (= e!1236 (computeModuloWhile!1 jz!42 q!70 lt!1657 lt!1661 lt!1656))))

(declare-fun b!2422 () Bool)

(assert (=> b!2422 (= e!1235 (and (bvsge (select (arr!65 (_2!82 lt!1630)) (bvsub jz!42 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= lt!1632 #b00000000000000000000000000000000) (= lt!1632 #b00000000000000000000000000000001)) (bvslt lt!1634 (bvsub jz!42 #b00000000000000000000000000000001))))))

(declare-fun b!2423 () Bool)

(assert (=> b!2423 (= e!1234 (bvsge (_2!83 lt!1654) (bvsub jz!42 #b00000000000000000000000000000001)))))

(assert (=> b!2423 (or (= (bvand jz!42 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (= (bvand jz!42 #b10000000000000000000000000000000) (bvand (bvsub jz!42 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))

(declare-fun b!2424 () Bool)

(declare-fun res!1985 () Bool)

(assert (=> b!2424 (=> (not res!1985) (not e!1235))))

(declare-fun iqInv!0 (array!145) Bool)

(assert (=> b!2424 (= res!1985 (iqInv!0 (_2!82 lt!1630)))))

(declare-fun b!2425 () Bool)

(declare-fun res!1986 () Bool)

(assert (=> b!2425 (=> (not res!1986) (not e!1234))))

(assert (=> b!2425 (= res!1986 (or (= (_4!39 lt!1654) #b00000000000000000000000000000000) (= (_4!39 lt!1654) #b00000000000000000000000000000001)))))

(declare-fun b!2426 () Bool)

(declare-fun res!1988 () Bool)

(assert (=> b!2426 (=> (not res!1988) (not e!1234))))

(assert (=> b!2426 (= res!1988 (iqInv!0 (_3!71 lt!1654)))))

(declare-fun b!2427 () Bool)

(assert (=> b!2427 (= e!1233 (computeModuloWhile!0 jz!42 q!70 lt!1653 jz!42 lt!1658))))

(declare-fun b!2428 () Bool)

(declare-fun res!1987 () Bool)

(assert (=> b!2428 (=> (not res!1987) (not e!1234))))

(declare-fun lt!1659 () (_ BitVec 32))

(assert (=> b!2428 (= res!1987 (bvsge (select (arr!65 (_3!71 lt!1654)) lt!1659) #b00000000100000000000000000000000))))

(assert (=> b!2428 (and (bvsge lt!1659 #b00000000000000000000000000000000) (bvslt lt!1659 (size!65 (_3!71 lt!1654))))))

(assert (=> b!2428 (= lt!1659 (bvsub jz!42 #b00000000000000000000000000000001))))

(assert (=> b!2428 (or (= (bvand jz!42 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (= (bvand jz!42 #b10000000000000000000000000000000) (bvand (bvsub jz!42 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))

(assert (= (and d!1595 c!425) b!2427))

(assert (= (and d!1595 (not c!425)) b!2419))

(assert (= (and d!1595 res!1989) b!2424))

(assert (= (and b!2424 res!1985) b!2422))

(assert (= (and d!1595 c!424) b!2421))

(assert (= (and d!1595 (not c!424)) b!2420))

(assert (= (and d!1595 res!1984) b!2426))

(assert (= (and b!2426 res!1988) b!2428))

(assert (= (and b!2428 res!1987) b!2425))

(assert (= (and b!2425 res!1986) b!2423))

(declare-fun m!3847 () Bool)

(assert (=> b!2426 m!3847))

(declare-fun m!3849 () Bool)

(assert (=> b!2427 m!3849))

(declare-fun m!3851 () Bool)

(assert (=> b!2421 m!3851))

(declare-fun m!3853 () Bool)

(assert (=> d!1595 m!3853))

(declare-fun m!3855 () Bool)

(assert (=> d!1595 m!3855))

(assert (=> d!1595 m!3839))

(declare-fun m!3857 () Bool)

(assert (=> b!2428 m!3857))

(declare-fun m!3859 () Bool)

(assert (=> b!2424 m!3859))

(assert (=> b!2422 m!3841))

(assert (=> b!2391 d!1595))

(declare-fun d!1597 () Bool)

(declare-fun res!1992 () Bool)

(declare-fun e!1239 () Bool)

(assert (=> d!1597 (=> (not res!1992) (not e!1239))))

(assert (=> d!1597 (= res!1992 (= (size!66 q!70) #b00000000000000000000000000010100))))

(assert (=> d!1597 (= (qInv!0 q!70) e!1239)))

(declare-fun b!2431 () Bool)

(declare-fun lambda!95 () Int)

(declare-fun all20!0 (array!147 Int) Bool)

(assert (=> b!2431 (= e!1239 (all20!0 q!70 lambda!95))))

(assert (= (and d!1597 res!1992) b!2431))

(declare-fun m!3861 () Bool)

(assert (=> b!2431 m!3861))

(assert (=> b!2398 d!1597))

(declare-fun b!2444 () Bool)

(declare-fun lt!1672 () array!145)

(declare-fun lt!1674 () (_ BitVec 32))

(declare-fun lt!1675 () (_ FloatingPoint 11 53))

(declare-fun e!1247 () tuple4!76)

(declare-fun Unit!175 () Unit!169)

(assert (=> b!2444 (= e!1247 (tuple4!77 Unit!175 lt!1672 lt!1674 lt!1675))))

(declare-fun d!1599 () Bool)

(declare-fun e!1248 () Bool)

(assert (=> d!1599 e!1248))

(declare-fun res!2003 () Bool)

(assert (=> d!1599 (=> (not res!2003) (not e!1248))))

(declare-fun lt!1676 () tuple4!76)

(assert (=> d!1599 (= res!2003 (and true true (bvsle #b00000000000000000000000000000000 (_3!70 lt!1676)) (bvsle (_3!70 lt!1676) jz!42) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (_4!38 lt!1676)) (fp.leq (_4!38 lt!1676) (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(assert (=> d!1599 (= lt!1676 e!1247)))

(declare-fun c!428 () Bool)

(assert (=> d!1599 (= c!428 (bvsgt lt!1674 #b00000000000000000000000000000000))))

(assert (=> d!1599 (= lt!1674 (bvsub jz!42 #b00000000000000000000000000000001))))

(declare-fun lt!1673 () (_ FloatingPoint 11 53))

(assert (=> d!1599 (= lt!1675 (fp.add roundNearestTiesToEven (select (arr!66 q!70) (bvsub jz!42 #b00000000000000000000000000000001)) lt!1673))))

(assert (=> d!1599 (= lt!1672 (array!146 (store (arr!65 lt!1629) (bvsub jz!42 jz!42) (ite (fp.isNaN (fp.sub roundNearestTiesToEven lt!1633 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!1673))) #b00000000000000000000000000000000 (ite (fp.gt (fp.sub roundNearestTiesToEven lt!1633 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!1673)) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.sub roundNearestTiesToEven lt!1633 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!1673)) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.sub roundNearestTiesToEven lt!1633 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!1673))))))) (size!65 lt!1629)))))

(assert (=> d!1599 (= lt!1673 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!1633)) #b00000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!1633) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!1633) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!1633)))))))))

(declare-fun e!1246 () Bool)

(assert (=> d!1599 e!1246))

(declare-fun res!2002 () Bool)

(assert (=> d!1599 (=> (not res!2002) (not e!1246))))

(assert (=> d!1599 (= res!2002 (and (bvsle #b00000000000000000000000000000000 jz!42) (bvsle jz!42 jz!42) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!1633) (fp.leq lt!1633 (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(assert (=> d!1599 (= (computeModuloWhile!0 jz!42 q!70 lt!1629 jz!42 lt!1633) lt!1676)))

(declare-fun b!2445 () Bool)

(assert (=> b!2445 (= e!1248 (bvsle (_3!70 lt!1676) #b00000000000000000000000000000000))))

(declare-fun b!2446 () Bool)

(assert (=> b!2446 (= e!1246 (bvsgt jz!42 #b00000000000000000000000000000000))))

(declare-fun b!2447 () Bool)

(declare-fun res!2004 () Bool)

(assert (=> b!2447 (=> (not res!2004) (not e!1248))))

(assert (=> b!2447 (= res!2004 (iqInv!0 (_2!82 lt!1676)))))

(declare-fun b!2448 () Bool)

(assert (=> b!2448 (= e!1247 (computeModuloWhile!0 jz!42 q!70 lt!1672 lt!1674 lt!1675))))

(declare-fun b!2449 () Bool)

(declare-fun res!2001 () Bool)

(assert (=> b!2449 (=> (not res!2001) (not e!1246))))

(assert (=> b!2449 (= res!2001 (iqInv!0 lt!1629))))

(assert (= (and d!1599 res!2002) b!2449))

(assert (= (and b!2449 res!2001) b!2446))

(assert (= (and d!1599 c!428) b!2448))

(assert (= (and d!1599 (not c!428)) b!2444))

(assert (= (and d!1599 res!2003) b!2447))

(assert (= (and b!2447 res!2004) b!2445))

(declare-fun m!3863 () Bool)

(assert (=> d!1599 m!3863))

(declare-fun m!3865 () Bool)

(assert (=> d!1599 m!3865))

(declare-fun m!3867 () Bool)

(assert (=> b!2447 m!3867))

(declare-fun m!3869 () Bool)

(assert (=> b!2448 m!3869))

(declare-fun m!3871 () Bool)

(assert (=> b!2449 m!3871))

(assert (=> b!2394 d!1599))

(declare-fun d!1601 () Bool)

(assert (=> d!1601 (= (array_inv!29 q!70) (bvsge (size!66 q!70) #b00000000000000000000000000000000))))

(assert (=> start!729 d!1601))

(check-sat (not b!2426) (not b!2449) (not b!2427) (not b!2424) (not b!2447) (not b!2421) (not b!2431) (not b!2448))
(check-sat)
