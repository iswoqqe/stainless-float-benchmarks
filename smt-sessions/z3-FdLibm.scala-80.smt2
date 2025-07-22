; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!689 () Bool)

(assert start!689)

(declare-fun b!1783 () Bool)

(declare-fun jz!42 () (_ BitVec 32))

(declare-fun lt!1334 () (_ FloatingPoint 11 53))

(declare-datatypes ((array!111 0))(
  ( (array!112 (arr!49 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!49 (_ BitVec 32))) )
))
(declare-fun q!70 () array!111)

(declare-datatypes ((Unit!121 0))(
  ( (Unit!122) )
))
(declare-datatypes ((array!113 0))(
  ( (array!114 (arr!50 (Array (_ BitVec 32) (_ BitVec 32))) (size!50 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!54 0))(
  ( (tuple4!55 (_1!71 Unit!121) (_2!71 array!113) (_3!59 (_ BitVec 32)) (_4!27 (_ FloatingPoint 11 53))) )
))
(declare-fun e!995 () tuple4!54)

(declare-fun lt!1336 () array!113)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!111 array!113 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!54)

(assert (=> b!1783 (= e!995 (computeModuloWhile!0 jz!42 q!70 lt!1336 jz!42 lt!1334))))

(declare-fun b!1784 () Bool)

(declare-fun Unit!123 () Unit!121)

(assert (=> b!1784 (= e!995 (tuple4!55 Unit!123 lt!1336 jz!42 lt!1334))))

(declare-fun res!1495 () Bool)

(declare-fun e!997 () Bool)

(assert (=> start!689 (=> (not res!1495) (not e!997))))

(assert (=> start!689 (= res!1495 (and (bvsle #b00000000000000000000000000000010 jz!42) (bvslt jz!42 #b00000000000000000000000000010011)))))

(assert (=> start!689 e!997))

(assert (=> start!689 true))

(declare-fun array_inv!21 (array!111) Bool)

(assert (=> start!689 (array_inv!21 q!70)))

(declare-fun b!1781 () Bool)

(declare-fun res!1494 () Bool)

(assert (=> b!1781 (=> (not res!1494) (not e!997))))

(declare-fun qInv!0 (array!111) Bool)

(assert (=> b!1781 (= res!1494 (qInv!0 q!70))))

(declare-fun lt!1335 () (_ FloatingPoint 11 53))

(declare-fun lt!1337 () tuple4!54)

(declare-fun b!1782 () Bool)

(assert (=> b!1782 (= e!997 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!1335) (fp.lt lt!1335 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!50 (_2!71 lt!1337)) (bvsub jz!42 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (let ((lhs!86 (ite (fp.isNaN lt!1335) #b00000000000000000000000000000000 (ite (fp.gt lt!1335 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!1335 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!1335)))))) (and (= (bvand lhs!86 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (not (= (bvand lhs!86 #b10000000000000000000000000000000) (bvand (bvadd lhs!86 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))))

(assert (=> b!1782 (= lt!1335 (fp.sub roundNearestTiesToEven (_4!27 lt!1337) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!27 lt!1337) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!27 lt!1337) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!27 lt!1337) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!27 lt!1337) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!1782 (= lt!1337 e!995)))

(declare-fun c!350 () Bool)

(assert (=> b!1782 (= c!350 (bvsgt jz!42 #b00000000000000000000000000000000))))

(assert (=> b!1782 (= lt!1334 (select (arr!49 q!70) jz!42))))

(assert (=> b!1782 (= lt!1336 (array!114 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(assert (= (and start!689 res!1495) b!1781))

(assert (= (and b!1781 res!1494) b!1782))

(assert (= (and b!1782 c!350) b!1783))

(assert (= (and b!1782 (not c!350)) b!1784))

(declare-fun m!2085 () Bool)

(assert (=> b!1783 m!2085))

(declare-fun m!2087 () Bool)

(assert (=> start!689 m!2087))

(declare-fun m!2089 () Bool)

(assert (=> b!1781 m!2089))

(declare-fun m!2091 () Bool)

(assert (=> b!1782 m!2091))

(declare-fun m!2093 () Bool)

(assert (=> b!1782 m!2093))

(check-sat (not start!689) (not b!1781) (not b!1783))
(check-sat)
