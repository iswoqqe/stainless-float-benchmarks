; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!653 () Bool)

(assert start!653)

(declare-datatypes ((Unit!96 0))(
  ( (Unit!97) )
))
(declare-datatypes ((array!80 0))(
  ( (array!81 (arr!35 (Array (_ BitVec 32) (_ BitVec 32))) (size!35 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!40 0))(
  ( (tuple4!41 (_1!64 Unit!96) (_2!64 array!80) (_3!52 (_ BitVec 32)) (_4!20 (_ FloatingPoint 11 53))) )
))
(declare-fun e!886 () tuple4!40)

(declare-fun jz!42 () (_ BitVec 32))

(declare-fun b!1570 () Bool)

(declare-fun lt!1205 () array!80)

(declare-fun lt!1206 () (_ FloatingPoint 11 53))

(declare-fun Unit!98 () Unit!96)

(assert (=> b!1570 (= e!886 (tuple4!41 Unit!98 lt!1205 jz!42 lt!1206))))

(declare-fun b!1567 () Bool)

(declare-fun res!1343 () Bool)

(declare-fun e!887 () Bool)

(assert (=> b!1567 (=> (not res!1343) (not e!887))))

(declare-datatypes ((array!82 0))(
  ( (array!83 (arr!36 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!36 (_ BitVec 32))) )
))
(declare-fun q!70 () array!82)

(declare-fun qInv!0 (array!82) Bool)

(assert (=> b!1567 (= res!1343 (qInv!0 q!70))))

(declare-fun res!1342 () Bool)

(assert (=> start!653 (=> (not res!1342) (not e!887))))

(assert (=> start!653 (= res!1342 (and (bvsle #b00000000000000000000000000000010 jz!42) (bvslt jz!42 #b00000000000000000000000000010011)))))

(assert (=> start!653 e!887))

(assert (=> start!653 true))

(declare-fun array_inv!14 (array!82) Bool)

(assert (=> start!653 (array_inv!14 q!70)))

(declare-fun b!1568 () Bool)

(declare-fun lt!1204 () (_ FloatingPoint 11 53))

(assert (=> b!1568 (= e!887 (and (not (fp.isNaN lt!1204)) (not (fp.gt lt!1204 ((_ to_fp 11 53) roundTowardNegative #b10111111111111111111111111111111111111111111111111111111111111111)))))))

(assert (=> b!1568 (= lt!1204 (fp.mul roundNearestTiesToEven (_4!20 e!886) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun c!319 () Bool)

(assert (=> b!1568 (= c!319 (bvsgt jz!42 #b00000000000000000000000000000000))))

(assert (=> b!1568 (= lt!1206 (select (arr!36 q!70) jz!42))))

(assert (=> b!1568 (= lt!1205 (array!81 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!1569 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!82 array!80 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!40)

(assert (=> b!1569 (= e!886 (computeModuloWhile!0 jz!42 q!70 lt!1205 jz!42 lt!1206))))

(assert (= (and start!653 res!1342) b!1567))

(assert (= (and b!1567 res!1343) b!1568))

(assert (= (and b!1568 c!319) b!1569))

(assert (= (and b!1568 (not c!319)) b!1570))

(declare-fun m!1853 () Bool)

(assert (=> b!1567 m!1853))

(declare-fun m!1855 () Bool)

(assert (=> start!653 m!1855))

(declare-fun m!1857 () Bool)

(assert (=> b!1568 m!1857))

(declare-fun m!1859 () Bool)

(assert (=> b!1569 m!1859))

(check-sat (not b!1567) (not b!1569) (not start!653))
(check-sat)
(get-model)

(declare-fun d!829 () Bool)

(declare-fun res!1346 () Bool)

(declare-fun e!891 () Bool)

(assert (=> d!829 (=> (not res!1346) (not e!891))))

(assert (=> d!829 (= res!1346 (= (size!36 q!70) #b00000000000000000000000000010100))))

(assert (=> d!829 (= (qInv!0 q!70) e!891)))

(declare-fun b!1573 () Bool)

(declare-fun lambda!58 () Int)

(declare-fun all20!0 (array!82 Int) Bool)

(assert (=> b!1573 (= e!891 (all20!0 q!70 lambda!58))))

(assert (= (and d!829 res!1346) b!1573))

(declare-fun m!1861 () Bool)

(assert (=> b!1573 m!1861))

(assert (=> b!1567 d!829))

(declare-fun e!900 () tuple4!40)

(declare-fun lt!1221 () (_ FloatingPoint 11 53))

(declare-fun lt!1218 () (_ BitVec 32))

(declare-fun lt!1219 () array!80)

(declare-fun b!1586 () Bool)

(declare-fun Unit!99 () Unit!96)

(assert (=> b!1586 (= e!900 (tuple4!41 Unit!99 lt!1219 lt!1218 lt!1221))))

(declare-fun b!1587 () Bool)

(declare-fun e!899 () Bool)

(assert (=> b!1587 (= e!899 (bvsgt jz!42 #b00000000000000000000000000000000))))

(declare-fun b!1588 () Bool)

(declare-fun res!1357 () Bool)

(declare-fun e!898 () Bool)

(assert (=> b!1588 (=> (not res!1357) (not e!898))))

(declare-fun lt!1220 () tuple4!40)

(declare-fun iqInv!0 (array!80) Bool)

(assert (=> b!1588 (= res!1357 (iqInv!0 (_2!64 lt!1220)))))

(declare-fun b!1589 () Bool)

(assert (=> b!1589 (= e!900 (computeModuloWhile!0 jz!42 q!70 lt!1219 lt!1218 lt!1221))))

(declare-fun b!1591 () Bool)

(declare-fun res!1355 () Bool)

(assert (=> b!1591 (=> (not res!1355) (not e!899))))

(assert (=> b!1591 (= res!1355 (iqInv!0 lt!1205))))

(declare-fun d!831 () Bool)

(assert (=> d!831 e!898))

(declare-fun res!1358 () Bool)

(assert (=> d!831 (=> (not res!1358) (not e!898))))

(assert (=> d!831 (= res!1358 (and true true (bvsle #b00000000000000000000000000000000 (_3!52 lt!1220)) (bvsle (_3!52 lt!1220) jz!42) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (_4!20 lt!1220)) (fp.leq (_4!20 lt!1220) (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(assert (=> d!831 (= lt!1220 e!900)))

(declare-fun c!322 () Bool)

(assert (=> d!831 (= c!322 (bvsgt lt!1218 #b00000000000000000000000000000000))))

(assert (=> d!831 (= lt!1218 (bvsub jz!42 #b00000000000000000000000000000001))))

(declare-fun lt!1217 () (_ FloatingPoint 11 53))

(assert (=> d!831 (= lt!1221 (fp.add roundNearestTiesToEven (select (arr!36 q!70) (bvsub jz!42 #b00000000000000000000000000000001)) lt!1217))))

(assert (=> d!831 (= lt!1219 (array!81 (store (arr!35 lt!1205) (bvsub jz!42 jz!42) (ite (fp.isNaN (fp.sub roundNearestTiesToEven lt!1206 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!1217))) #b00000000000000000000000000000000 (ite (fp.gt (fp.sub roundNearestTiesToEven lt!1206 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!1217)) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.sub roundNearestTiesToEven lt!1206 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!1217)) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.sub roundNearestTiesToEven lt!1206 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!1217))))))) (size!35 lt!1205)))))

(assert (=> d!831 (= lt!1217 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!1206)) #b00000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!1206) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!1206) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!1206)))))))))

(assert (=> d!831 e!899))

(declare-fun res!1356 () Bool)

(assert (=> d!831 (=> (not res!1356) (not e!899))))

(assert (=> d!831 (= res!1356 (and (bvsle #b00000000000000000000000000000000 jz!42) (bvsle jz!42 jz!42) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!1206) (fp.leq lt!1206 (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(assert (=> d!831 (= (computeModuloWhile!0 jz!42 q!70 lt!1205 jz!42 lt!1206) lt!1220)))

(declare-fun b!1590 () Bool)

(assert (=> b!1590 (= e!898 (bvsle (_3!52 lt!1220) #b00000000000000000000000000000000))))

(assert (= (and d!831 res!1356) b!1591))

(assert (= (and b!1591 res!1355) b!1587))

(assert (= (and d!831 c!322) b!1589))

(assert (= (and d!831 (not c!322)) b!1586))

(assert (= (and d!831 res!1358) b!1588))

(assert (= (and b!1588 res!1357) b!1590))

(declare-fun m!1863 () Bool)

(assert (=> b!1588 m!1863))

(declare-fun m!1865 () Bool)

(assert (=> b!1589 m!1865))

(declare-fun m!1867 () Bool)

(assert (=> b!1591 m!1867))

(declare-fun m!1869 () Bool)

(assert (=> d!831 m!1869))

(declare-fun m!1871 () Bool)

(assert (=> d!831 m!1871))

(assert (=> b!1569 d!831))

(declare-fun d!833 () Bool)

(assert (=> d!833 (= (array_inv!14 q!70) (bvsge (size!36 q!70) #b00000000000000000000000000000000))))

(assert (=> start!653 d!833))

(check-sat (not b!1591) (not b!1573) (not b!1588) (not b!1589))
(check-sat)
