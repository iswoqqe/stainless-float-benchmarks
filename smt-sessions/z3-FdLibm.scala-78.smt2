; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!685 () Bool)

(assert start!685)

(declare-fun b!1757 () Bool)

(declare-fun res!1482 () Bool)

(declare-fun e!978 () Bool)

(assert (=> b!1757 (=> (not res!1482) (not e!978))))

(declare-datatypes ((array!103 0))(
  ( (array!104 (arr!45 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!45 (_ BitVec 32))) )
))
(declare-fun q!70 () array!103)

(declare-fun qInv!0 (array!103) Bool)

(assert (=> b!1757 (= res!1482 (qInv!0 q!70))))

(declare-fun jz!42 () (_ BitVec 32))

(declare-datatypes ((array!105 0))(
  ( (array!106 (arr!46 (Array (_ BitVec 32) (_ BitVec 32))) (size!46 (_ BitVec 32))) )
))
(declare-fun lt!1311 () array!105)

(declare-fun b!1759 () Bool)

(declare-datatypes ((Unit!115 0))(
  ( (Unit!116) )
))
(declare-datatypes ((tuple4!50 0))(
  ( (tuple4!51 (_1!69 Unit!115) (_2!69 array!105) (_3!57 (_ BitVec 32)) (_4!25 (_ FloatingPoint 11 53))) )
))
(declare-fun e!977 () tuple4!50)

(declare-fun lt!1312 () (_ FloatingPoint 11 53))

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!103 array!105 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!50)

(assert (=> b!1759 (= e!977 (computeModuloWhile!0 jz!42 q!70 lt!1311 jz!42 lt!1312))))

(declare-fun res!1483 () Bool)

(assert (=> start!685 (=> (not res!1483) (not e!978))))

(assert (=> start!685 (= res!1483 (and (bvsle #b00000000000000000000000000000010 jz!42) (bvslt jz!42 #b00000000000000000000000000010011)))))

(assert (=> start!685 e!978))

(assert (=> start!685 true))

(declare-fun array_inv!19 (array!103) Bool)

(assert (=> start!685 (array_inv!19 q!70)))

(declare-fun b!1760 () Bool)

(declare-fun Unit!117 () Unit!115)

(assert (=> b!1760 (= e!977 (tuple4!51 Unit!117 lt!1311 jz!42 lt!1312))))

(declare-fun b!1758 () Bool)

(declare-fun lt!1313 () (_ FloatingPoint 11 53))

(declare-fun lt!1310 () tuple4!50)

(assert (=> b!1758 (= e!978 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!1313) (fp.lt lt!1313 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!46 (_2!69 lt!1310)) (bvsub jz!42 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (not (fp.isNaN lt!1313)) (not (fp.gt lt!1313 ((_ to_fp 11 53) roundTowardNegative #b101111111111111111111111111111111)))))))

(assert (=> b!1758 (= lt!1313 (fp.sub roundNearestTiesToEven (_4!25 lt!1310) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!25 lt!1310) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!25 lt!1310) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!25 lt!1310) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!25 lt!1310) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!1758 (= lt!1310 e!977)))

(declare-fun c!344 () Bool)

(assert (=> b!1758 (= c!344 (bvsgt jz!42 #b00000000000000000000000000000000))))

(assert (=> b!1758 (= lt!1312 (select (arr!45 q!70) jz!42))))

(assert (=> b!1758 (= lt!1311 (array!106 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(assert (= (and start!685 res!1483) b!1757))

(assert (= (and b!1757 res!1482) b!1758))

(assert (= (and b!1758 c!344) b!1759))

(assert (= (and b!1758 (not c!344)) b!1760))

(declare-fun m!2065 () Bool)

(assert (=> b!1757 m!2065))

(declare-fun m!2067 () Bool)

(assert (=> b!1759 m!2067))

(declare-fun m!2069 () Bool)

(assert (=> start!685 m!2069))

(declare-fun m!2071 () Bool)

(assert (=> b!1758 m!2071))

(declare-fun m!2073 () Bool)

(assert (=> b!1758 m!2073))

(check-sat (not b!1757) (not b!1759) (not start!685))
(check-sat)
