; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!697 () Bool)

(assert start!697)

(declare-fun b!1831 () Bool)

(declare-datatypes ((array!127 0))(
  ( (array!128 (arr!57 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!57 (_ BitVec 32))) )
))
(declare-fun q!70 () array!127)

(declare-datatypes ((array!129 0))(
  ( (array!130 (arr!58 (Array (_ BitVec 32) (_ BitVec 32))) (size!58 (_ BitVec 32))) )
))
(declare-fun lt!1383 () array!129)

(declare-datatypes ((Unit!133 0))(
  ( (Unit!134) )
))
(declare-datatypes ((tuple4!62 0))(
  ( (tuple4!63 (_1!75 Unit!133) (_2!75 array!129) (_3!63 (_ BitVec 32)) (_4!31 (_ FloatingPoint 11 53))) )
))
(declare-fun e!1033 () tuple4!62)

(declare-fun lt!1382 () (_ FloatingPoint 11 53))

(declare-fun jz!42 () (_ BitVec 32))

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!127 array!129 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!62)

(assert (=> b!1831 (= e!1033 (computeModuloWhile!0 jz!42 q!70 lt!1383 jz!42 lt!1382))))

(declare-fun e!1032 () Bool)

(declare-fun b!1830 () Bool)

(declare-fun lt!1384 () (_ FloatingPoint 11 53))

(declare-fun lt!1385 () tuple4!62)

(assert (=> b!1830 (= e!1032 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!1384) (fp.lt lt!1384 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!58 (_2!75 lt!1385)) (bvsub jz!42 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (not (= (bvand jz!42 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand jz!42 #b10000000000000000000000000000000) (bvand (bvsub jz!42 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(assert (=> b!1830 (= lt!1384 (fp.sub roundNearestTiesToEven (_4!31 lt!1385) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!31 lt!1385) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!31 lt!1385) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!31 lt!1385) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!31 lt!1385) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!1830 (= lt!1385 e!1033)))

(declare-fun c!362 () Bool)

(assert (=> b!1830 (= c!362 (bvsgt jz!42 #b00000000000000000000000000000000))))

(assert (=> b!1830 (= lt!1382 (select (arr!57 q!70) jz!42))))

(assert (=> b!1830 (= lt!1383 (array!130 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!1832 () Bool)

(declare-fun Unit!135 () Unit!133)

(assert (=> b!1832 (= e!1033 (tuple4!63 Unit!135 lt!1383 jz!42 lt!1382))))

(declare-fun b!1829 () Bool)

(declare-fun res!1519 () Bool)

(assert (=> b!1829 (=> (not res!1519) (not e!1032))))

(declare-fun qInv!0 (array!127) Bool)

(assert (=> b!1829 (= res!1519 (qInv!0 q!70))))

(declare-fun res!1518 () Bool)

(assert (=> start!697 (=> (not res!1518) (not e!1032))))

(assert (=> start!697 (= res!1518 (and (bvsle #b00000000000000000000000000000010 jz!42) (bvslt jz!42 #b00000000000000000000000000010011)))))

(assert (=> start!697 e!1032))

(assert (=> start!697 true))

(declare-fun array_inv!25 (array!127) Bool)

(assert (=> start!697 (array_inv!25 q!70)))

(assert (= (and start!697 res!1518) b!1829))

(assert (= (and b!1829 res!1519) b!1830))

(assert (= (and b!1830 c!362) b!1831))

(assert (= (and b!1830 (not c!362)) b!1832))

(declare-fun m!2125 () Bool)

(assert (=> b!1831 m!2125))

(declare-fun m!2127 () Bool)

(assert (=> b!1830 m!2127))

(declare-fun m!2129 () Bool)

(assert (=> b!1830 m!2129))

(declare-fun m!2131 () Bool)

(assert (=> b!1829 m!2131))

(declare-fun m!2133 () Bool)

(assert (=> start!697 m!2133))

(check-sat (not b!1831) (not start!697) (not b!1829))
(check-sat)
