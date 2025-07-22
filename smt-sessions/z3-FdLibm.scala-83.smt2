; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!695 () Bool)

(assert start!695)

(declare-fun b!1820 () Bool)

(declare-datatypes ((Unit!130 0))(
  ( (Unit!131) )
))
(declare-datatypes ((array!123 0))(
  ( (array!124 (arr!55 (Array (_ BitVec 32) (_ BitVec 32))) (size!55 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!60 0))(
  ( (tuple4!61 (_1!74 Unit!130) (_2!74 array!123) (_3!62 (_ BitVec 32)) (_4!30 (_ FloatingPoint 11 53))) )
))
(declare-fun e!1022 () tuple4!60)

(declare-fun jz!42 () (_ BitVec 32))

(declare-fun lt!1370 () array!123)

(declare-fun lt!1372 () (_ FloatingPoint 11 53))

(declare-fun Unit!132 () Unit!130)

(assert (=> b!1820 (= e!1022 (tuple4!61 Unit!132 lt!1370 jz!42 lt!1372))))

(declare-datatypes ((array!125 0))(
  ( (array!126 (arr!56 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!56 (_ BitVec 32))) )
))
(declare-fun q!70 () array!125)

(declare-fun b!1819 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!125 array!123 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!60)

(assert (=> b!1819 (= e!1022 (computeModuloWhile!0 jz!42 q!70 lt!1370 jz!42 lt!1372))))

(declare-fun res!1513 () Bool)

(declare-fun e!1023 () Bool)

(assert (=> start!695 (=> (not res!1513) (not e!1023))))

(assert (=> start!695 (= res!1513 (and (bvsle #b00000000000000000000000000000010 jz!42) (bvslt jz!42 #b00000000000000000000000000010011)))))

(assert (=> start!695 e!1023))

(assert (=> start!695 true))

(declare-fun array_inv!24 (array!125) Bool)

(assert (=> start!695 (array_inv!24 q!70)))

(declare-fun lt!1371 () tuple4!60)

(declare-fun b!1818 () Bool)

(declare-fun lt!1373 () (_ FloatingPoint 11 53))

(assert (=> b!1818 (= e!1023 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!1373) (fp.lt lt!1373 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvslt (select (arr!55 (_2!74 lt!1371)) (bvsub jz!42 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (not (fp.isNaN lt!1373)) (fp.gt lt!1373 ((_ to_fp 11 53) roundTowardNegative #b101111111111111111111111111111111)) (not (fp.lt lt!1373 ((_ to_fp 11 53) roundTowardPositive #b010000000000000000000000000000000)))))))

(assert (=> b!1818 (= lt!1373 (fp.sub roundNearestTiesToEven (_4!30 lt!1371) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!30 lt!1371) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!30 lt!1371) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!30 lt!1371) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!30 lt!1371) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!1818 (= lt!1371 e!1022)))

(declare-fun c!359 () Bool)

(assert (=> b!1818 (= c!359 (bvsgt jz!42 #b00000000000000000000000000000000))))

(assert (=> b!1818 (= lt!1372 (select (arr!56 q!70) jz!42))))

(assert (=> b!1818 (= lt!1370 (array!124 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!1817 () Bool)

(declare-fun res!1512 () Bool)

(assert (=> b!1817 (=> (not res!1512) (not e!1023))))

(declare-fun qInv!0 (array!125) Bool)

(assert (=> b!1817 (= res!1512 (qInv!0 q!70))))

(assert (= (and start!695 res!1513) b!1817))

(assert (= (and b!1817 res!1512) b!1818))

(assert (= (and b!1818 c!359) b!1819))

(assert (= (and b!1818 (not c!359)) b!1820))

(declare-fun m!2115 () Bool)

(assert (=> b!1819 m!2115))

(declare-fun m!2117 () Bool)

(assert (=> start!695 m!2117))

(declare-fun m!2119 () Bool)

(assert (=> b!1818 m!2119))

(declare-fun m!2121 () Bool)

(assert (=> b!1818 m!2121))

(declare-fun m!2123 () Bool)

(assert (=> b!1817 m!2123))

(check-sat (not b!1817) (not b!1819) (not start!695))
(check-sat)
