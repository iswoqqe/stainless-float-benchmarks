; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!691 () Bool)

(assert start!691)

(declare-fun res!1501 () Bool)

(declare-fun e!1005 () Bool)

(assert (=> start!691 (=> (not res!1501) (not e!1005))))

(declare-fun jz!42 () (_ BitVec 32))

(assert (=> start!691 (= res!1501 (and (bvsle #b00000000000000000000000000000010 jz!42) (bvslt jz!42 #b00000000000000000000000000010011)))))

(assert (=> start!691 e!1005))

(assert (=> start!691 true))

(declare-datatypes ((array!115 0))(
  ( (array!116 (arr!51 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!51 (_ BitVec 32))) )
))
(declare-fun q!70 () array!115)

(declare-fun array_inv!22 (array!115) Bool)

(assert (=> start!691 (array_inv!22 q!70)))

(declare-datatypes ((Unit!124 0))(
  ( (Unit!125) )
))
(declare-datatypes ((array!117 0))(
  ( (array!118 (arr!52 (Array (_ BitVec 32) (_ BitVec 32))) (size!52 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!56 0))(
  ( (tuple4!57 (_1!72 Unit!124) (_2!72 array!117) (_3!60 (_ BitVec 32)) (_4!28 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!1346 () tuple4!56)

(declare-fun lt!1349 () (_ FloatingPoint 11 53))

(declare-fun b!1794 () Bool)

(assert (=> b!1794 (= e!1005 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!1349) (fp.lt lt!1349 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvslt (select (arr!52 (_2!72 lt!1346)) (bvsub jz!42 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (fp.isNaN lt!1349)))))

(assert (=> b!1794 (= lt!1349 (fp.sub roundNearestTiesToEven (_4!28 lt!1346) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!28 lt!1346) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!28 lt!1346) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!28 lt!1346) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!28 lt!1346) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(declare-fun e!1006 () tuple4!56)

(assert (=> b!1794 (= lt!1346 e!1006)))

(declare-fun c!353 () Bool)

(assert (=> b!1794 (= c!353 (bvsgt jz!42 #b00000000000000000000000000000000))))

(declare-fun lt!1348 () (_ FloatingPoint 11 53))

(assert (=> b!1794 (= lt!1348 (select (arr!51 q!70) jz!42))))

(declare-fun lt!1347 () array!117)

(assert (=> b!1794 (= lt!1347 (array!118 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!1793 () Bool)

(declare-fun res!1500 () Bool)

(assert (=> b!1793 (=> (not res!1500) (not e!1005))))

(declare-fun qInv!0 (array!115) Bool)

(assert (=> b!1793 (= res!1500 (qInv!0 q!70))))

(declare-fun b!1796 () Bool)

(declare-fun Unit!126 () Unit!124)

(assert (=> b!1796 (= e!1006 (tuple4!57 Unit!126 lt!1347 jz!42 lt!1348))))

(declare-fun b!1795 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!115 array!117 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!56)

(assert (=> b!1795 (= e!1006 (computeModuloWhile!0 jz!42 q!70 lt!1347 jz!42 lt!1348))))

(assert (= (and start!691 res!1501) b!1793))

(assert (= (and b!1793 res!1500) b!1794))

(assert (= (and b!1794 c!353) b!1795))

(assert (= (and b!1794 (not c!353)) b!1796))

(declare-fun m!2095 () Bool)

(assert (=> start!691 m!2095))

(declare-fun m!2097 () Bool)

(assert (=> b!1794 m!2097))

(declare-fun m!2099 () Bool)

(assert (=> b!1794 m!2099))

(declare-fun m!2101 () Bool)

(assert (=> b!1793 m!2101))

(declare-fun m!2103 () Bool)

(assert (=> b!1795 m!2103))

(check-sat (not b!1795) (not start!691) (not b!1793))
(check-sat)
