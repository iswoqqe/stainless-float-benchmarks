; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!683 () Bool)

(assert start!683)

(declare-fun b!1745 () Bool)

(declare-fun res!1476 () Bool)

(declare-fun e!968 () Bool)

(assert (=> b!1745 (=> (not res!1476) (not e!968))))

(declare-datatypes ((array!99 0))(
  ( (array!100 (arr!43 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!43 (_ BitVec 32))) )
))
(declare-fun q!70 () array!99)

(declare-fun qInv!0 (array!99) Bool)

(assert (=> b!1745 (= res!1476 (qInv!0 q!70))))

(declare-fun b!1746 () Bool)

(declare-fun jz!42 () (_ BitVec 32))

(declare-fun lt!1299 () (_ FloatingPoint 11 53))

(declare-datatypes ((Unit!112 0))(
  ( (Unit!113) )
))
(declare-datatypes ((array!101 0))(
  ( (array!102 (arr!44 (Array (_ BitVec 32) (_ BitVec 32))) (size!44 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!48 0))(
  ( (tuple4!49 (_1!68 Unit!112) (_2!68 array!101) (_3!56 (_ BitVec 32)) (_4!24 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!1301 () tuple4!48)

(assert (=> b!1746 (= e!968 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!1299) (fp.lt lt!1299 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!44 (_2!68 lt!1301)) (bvsub jz!42 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (fp.isNaN lt!1299)))))

(assert (=> b!1746 (= lt!1299 (fp.sub roundNearestTiesToEven (_4!24 lt!1301) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!24 lt!1301) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!24 lt!1301) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!24 lt!1301) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!24 lt!1301) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(declare-fun e!970 () tuple4!48)

(assert (=> b!1746 (= lt!1301 e!970)))

(declare-fun c!341 () Bool)

(assert (=> b!1746 (= c!341 (bvsgt jz!42 #b00000000000000000000000000000000))))

(declare-fun lt!1298 () (_ FloatingPoint 11 53))

(assert (=> b!1746 (= lt!1298 (select (arr!43 q!70) jz!42))))

(declare-fun lt!1300 () array!101)

(assert (=> b!1746 (= lt!1300 (array!102 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun res!1477 () Bool)

(assert (=> start!683 (=> (not res!1477) (not e!968))))

(assert (=> start!683 (= res!1477 (and (bvsle #b00000000000000000000000000000010 jz!42) (bvslt jz!42 #b00000000000000000000000000010011)))))

(assert (=> start!683 e!968))

(assert (=> start!683 true))

(declare-fun array_inv!18 (array!99) Bool)

(assert (=> start!683 (array_inv!18 q!70)))

(declare-fun b!1748 () Bool)

(declare-fun Unit!114 () Unit!112)

(assert (=> b!1748 (= e!970 (tuple4!49 Unit!114 lt!1300 jz!42 lt!1298))))

(declare-fun b!1747 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!99 array!101 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!48)

(assert (=> b!1747 (= e!970 (computeModuloWhile!0 jz!42 q!70 lt!1300 jz!42 lt!1298))))

(assert (= (and start!683 res!1477) b!1745))

(assert (= (and b!1745 res!1476) b!1746))

(assert (= (and b!1746 c!341) b!1747))

(assert (= (and b!1746 (not c!341)) b!1748))

(declare-fun m!2055 () Bool)

(assert (=> b!1745 m!2055))

(declare-fun m!2057 () Bool)

(assert (=> b!1746 m!2057))

(declare-fun m!2059 () Bool)

(assert (=> b!1746 m!2059))

(declare-fun m!2061 () Bool)

(assert (=> start!683 m!2061))

(declare-fun m!2063 () Bool)

(assert (=> b!1747 m!2063))

(check-sat (not start!683) (not b!1745) (not b!1747))
(check-sat)
