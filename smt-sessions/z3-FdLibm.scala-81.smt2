; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!699 () Bool)

(assert start!699)

(declare-fun b!2164 () Bool)

(declare-fun jz!42 () (_ BitVec 32))

(declare-fun lt!1420 () (_ FloatingPoint 11 53))

(declare-datatypes ((Unit!139 0))(
  ( (Unit!140) )
))
(declare-datatypes ((array!115 0))(
  ( (array!116 (arr!51 (Array (_ BitVec 32) (_ BitVec 32))) (size!51 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!56 0))(
  ( (tuple4!57 (_1!72 Unit!139) (_2!72 array!115) (_3!60 (_ BitVec 32)) (_4!28 (_ FloatingPoint 11 53))) )
))
(declare-fun e!1075 () tuple4!56)

(declare-fun lt!1419 () array!115)

(declare-fun Unit!141 () Unit!139)

(assert (=> b!2164 (= e!1075 (tuple4!57 Unit!141 lt!1419 jz!42 lt!1420))))

(declare-fun lt!1421 () (_ FloatingPoint 11 53))

(declare-fun b!2162 () Bool)

(declare-fun lt!1418 () tuple4!56)

(declare-fun e!1077 () Bool)

(assert (=> b!2162 (= e!1077 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!1421) (fp.lt lt!1421 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvslt (select (arr!51 (_2!72 lt!1418)) (bvsub jz!42 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (fp.isNaN lt!1421)))))

(assert (=> b!2162 (= lt!1421 (fp.sub roundNearestTiesToEven (_4!28 lt!1418) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!28 lt!1418) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!28 lt!1418) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!28 lt!1418) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!28 lt!1418) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!2162 (= lt!1418 e!1075)))

(declare-fun c!368 () Bool)

(assert (=> b!2162 (= c!368 (bvsgt jz!42 #b00000000000000000000000000000000))))

(declare-datatypes ((array!117 0))(
  ( (array!118 (arr!52 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!52 (_ BitVec 32))) )
))
(declare-fun q!70 () array!117)

(assert (=> b!2162 (= lt!1420 (select (arr!52 q!70) jz!42))))

(assert (=> b!2162 (= lt!1419 (array!116 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun res!1839 () Bool)

(assert (=> start!699 (=> (not res!1839) (not e!1077))))

(assert (=> start!699 (= res!1839 (and (bvsle #b00000000000000000000000000000010 jz!42) (bvslt jz!42 #b00000000000000000000000000010011)))))

(assert (=> start!699 e!1077))

(assert (=> start!699 true))

(declare-fun array_inv!22 (array!117) Bool)

(assert (=> start!699 (array_inv!22 q!70)))

(declare-fun b!2161 () Bool)

(declare-fun res!1838 () Bool)

(assert (=> b!2161 (=> (not res!1838) (not e!1077))))

(declare-fun qInv!0 (array!117) Bool)

(assert (=> b!2161 (= res!1838 (qInv!0 q!70))))

(declare-fun b!2163 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!117 array!115 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!56)

(assert (=> b!2163 (= e!1075 (computeModuloWhile!0 jz!42 q!70 lt!1419 jz!42 lt!1420))))

(assert (= (and start!699 res!1839) b!2161))

(assert (= (and b!2161 res!1838) b!2162))

(assert (= (and b!2162 c!368) b!2163))

(assert (= (and b!2162 (not c!368)) b!2164))

(declare-fun m!3703 () Bool)

(assert (=> b!2162 m!3703))

(declare-fun m!3705 () Bool)

(assert (=> b!2162 m!3705))

(declare-fun m!3707 () Bool)

(assert (=> start!699 m!3707))

(declare-fun m!3709 () Bool)

(assert (=> b!2161 m!3709))

(declare-fun m!3711 () Bool)

(assert (=> b!2163 m!3711))

(check-sat (not b!2161) (not start!699) (not b!2163))
(check-sat)
