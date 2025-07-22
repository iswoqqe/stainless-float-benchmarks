; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!693 () Bool)

(assert start!693)

(declare-datatypes ((array!119 0))(
  ( (array!120 (arr!53 (Array (_ BitVec 32) (_ BitVec 32))) (size!53 (_ BitVec 32))) )
))
(declare-fun lt!1359 () array!119)

(declare-fun b!1808 () Bool)

(declare-fun jz!42 () (_ BitVec 32))

(declare-fun lt!1361 () (_ FloatingPoint 11 53))

(declare-datatypes ((Unit!127 0))(
  ( (Unit!128) )
))
(declare-datatypes ((tuple4!58 0))(
  ( (tuple4!59 (_1!73 Unit!127) (_2!73 array!119) (_3!61 (_ BitVec 32)) (_4!29 (_ FloatingPoint 11 53))) )
))
(declare-fun e!1014 () tuple4!58)

(declare-fun Unit!129 () Unit!127)

(assert (=> b!1808 (= e!1014 (tuple4!59 Unit!129 lt!1359 jz!42 lt!1361))))

(declare-fun res!1507 () Bool)

(declare-fun e!1013 () Bool)

(assert (=> start!693 (=> (not res!1507) (not e!1013))))

(assert (=> start!693 (= res!1507 (and (bvsle #b00000000000000000000000000000010 jz!42) (bvslt jz!42 #b00000000000000000000000000010011)))))

(assert (=> start!693 e!1013))

(assert (=> start!693 true))

(declare-datatypes ((array!121 0))(
  ( (array!122 (arr!54 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!54 (_ BitVec 32))) )
))
(declare-fun q!70 () array!121)

(declare-fun array_inv!23 (array!121) Bool)

(assert (=> start!693 (array_inv!23 q!70)))

(declare-fun b!1807 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!121 array!119 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!58)

(assert (=> b!1807 (= e!1014 (computeModuloWhile!0 jz!42 q!70 lt!1359 jz!42 lt!1361))))

(declare-fun lt!1360 () (_ FloatingPoint 11 53))

(declare-fun b!1806 () Bool)

(declare-fun lt!1358 () tuple4!58)

(assert (=> b!1806 (= e!1013 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!1360) (fp.lt lt!1360 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvslt (select (arr!53 (_2!73 lt!1358)) (bvsub jz!42 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (not (fp.isNaN lt!1360)) (not (fp.gt lt!1360 ((_ to_fp 11 53) roundTowardNegative #b101111111111111111111111111111111)))))))

(assert (=> b!1806 (= lt!1360 (fp.sub roundNearestTiesToEven (_4!29 lt!1358) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!29 lt!1358) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!29 lt!1358) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!29 lt!1358) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!29 lt!1358) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!1806 (= lt!1358 e!1014)))

(declare-fun c!356 () Bool)

(assert (=> b!1806 (= c!356 (bvsgt jz!42 #b00000000000000000000000000000000))))

(assert (=> b!1806 (= lt!1361 (select (arr!54 q!70) jz!42))))

(assert (=> b!1806 (= lt!1359 (array!120 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!1805 () Bool)

(declare-fun res!1506 () Bool)

(assert (=> b!1805 (=> (not res!1506) (not e!1013))))

(declare-fun qInv!0 (array!121) Bool)

(assert (=> b!1805 (= res!1506 (qInv!0 q!70))))

(assert (= (and start!693 res!1507) b!1805))

(assert (= (and b!1805 res!1506) b!1806))

(assert (= (and b!1806 c!356) b!1807))

(assert (= (and b!1806 (not c!356)) b!1808))

(declare-fun m!2105 () Bool)

(assert (=> start!693 m!2105))

(declare-fun m!2107 () Bool)

(assert (=> b!1807 m!2107))

(declare-fun m!2109 () Bool)

(assert (=> b!1806 m!2109))

(declare-fun m!2111 () Bool)

(assert (=> b!1806 m!2111))

(declare-fun m!2113 () Bool)

(assert (=> b!1805 m!2113))

(check-sat (not start!693) (not b!1805) (not b!1807))
(check-sat)
