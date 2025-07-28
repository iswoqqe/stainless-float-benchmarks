; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!703 () Bool)

(assert start!703)

(declare-fun e!1095 () Bool)

(declare-datatypes ((Unit!145 0))(
  ( (Unit!146) )
))
(declare-datatypes ((array!123 0))(
  ( (array!124 (arr!55 (Array (_ BitVec 32) (_ BitVec 32))) (size!55 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!60 0))(
  ( (tuple4!61 (_1!74 Unit!145) (_2!74 array!123) (_3!62 (_ BitVec 32)) (_4!30 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!1445 () tuple4!60)

(declare-fun jz!42 () (_ BitVec 32))

(declare-fun lt!1443 () (_ FloatingPoint 11 53))

(declare-fun b!2186 () Bool)

(assert (=> b!2186 (= e!1095 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!1443) (fp.lt lt!1443 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvslt (select (arr!55 (_2!74 lt!1445)) (bvsub jz!42 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (not (fp.isNaN lt!1443)) (fp.gt lt!1443 ((_ to_fp 11 53) roundTowardNegative #b101111111111111111111111111111111)) (not (fp.lt lt!1443 ((_ to_fp 11 53) roundTowardPositive #b010000000000000000000000000000000)))))))

(assert (=> b!2186 (= lt!1443 (fp.sub roundNearestTiesToEven (_4!30 lt!1445) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!30 lt!1445) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!30 lt!1445) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!30 lt!1445) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!30 lt!1445) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(declare-fun e!1094 () tuple4!60)

(assert (=> b!2186 (= lt!1445 e!1094)))

(declare-fun c!374 () Bool)

(assert (=> b!2186 (= c!374 (bvsgt jz!42 #b00000000000000000000000000000000))))

(declare-fun lt!1444 () (_ FloatingPoint 11 53))

(declare-datatypes ((array!125 0))(
  ( (array!126 (arr!56 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!56 (_ BitVec 32))) )
))
(declare-fun q!70 () array!125)

(assert (=> b!2186 (= lt!1444 (select (arr!56 q!70) jz!42))))

(declare-fun lt!1442 () array!123)

(assert (=> b!2186 (= lt!1442 (array!124 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!2187 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!125 array!123 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!60)

(assert (=> b!2187 (= e!1094 (computeModuloWhile!0 jz!42 q!70 lt!1442 jz!42 lt!1444))))

(declare-fun b!2188 () Bool)

(declare-fun Unit!147 () Unit!145)

(assert (=> b!2188 (= e!1094 (tuple4!61 Unit!147 lt!1442 jz!42 lt!1444))))

(declare-fun res!1850 () Bool)

(assert (=> start!703 (=> (not res!1850) (not e!1095))))

(assert (=> start!703 (= res!1850 (and (bvsle #b00000000000000000000000000000010 jz!42) (bvslt jz!42 #b00000000000000000000000000010011)))))

(assert (=> start!703 e!1095))

(assert (=> start!703 true))

(declare-fun array_inv!24 (array!125) Bool)

(assert (=> start!703 (array_inv!24 q!70)))

(declare-fun b!2185 () Bool)

(declare-fun res!1851 () Bool)

(assert (=> b!2185 (=> (not res!1851) (not e!1095))))

(declare-fun qInv!0 (array!125) Bool)

(assert (=> b!2185 (= res!1851 (qInv!0 q!70))))

(assert (= (and start!703 res!1850) b!2185))

(assert (= (and b!2185 res!1851) b!2186))

(assert (= (and b!2186 c!374) b!2187))

(assert (= (and b!2186 (not c!374)) b!2188))

(declare-fun m!3723 () Bool)

(assert (=> b!2186 m!3723))

(declare-fun m!3725 () Bool)

(assert (=> b!2186 m!3725))

(declare-fun m!3727 () Bool)

(assert (=> b!2187 m!3727))

(declare-fun m!3729 () Bool)

(assert (=> start!703 m!3729))

(declare-fun m!3731 () Bool)

(assert (=> b!2185 m!3731))

(check-sat (not start!703) (not b!2187) (not b!2185))
(check-sat)
