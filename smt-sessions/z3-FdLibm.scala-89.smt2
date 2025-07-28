; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!739 () Bool)

(assert start!739)

(declare-fun b!2466 () Bool)

(declare-fun e!1266 () Bool)

(declare-fun e!1262 () Bool)

(assert (=> b!2466 (= e!1266 e!1262)))

(declare-fun res!2016 () Bool)

(assert (=> b!2466 (=> (not res!2016) (not e!1262))))

(declare-fun lt!1695 () (_ FloatingPoint 11 53))

(assert (=> b!2466 (= res!2016 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!1695) (fp.lt lt!1695 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((Unit!176 0))(
  ( (Unit!177) )
))
(declare-datatypes ((array!150 0))(
  ( (array!151 (arr!67 (Array (_ BitVec 32) (_ BitVec 32))) (size!67 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!80 0))(
  ( (tuple4!81 (_1!84 Unit!176) (_2!84 array!150) (_3!72 (_ BitVec 32)) (_4!40 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!1692 () tuple4!80)

(assert (=> b!2466 (= lt!1695 (fp.sub roundNearestTiesToEven (_4!40 lt!1692) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!40 lt!1692) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!40 lt!1692) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!40 lt!1692) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!40 lt!1692) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(declare-fun e!1265 () tuple4!80)

(assert (=> b!2466 (= lt!1692 e!1265)))

(declare-fun c!434 () Bool)

(declare-fun jz!42 () (_ BitVec 32))

(assert (=> b!2466 (= c!434 (bvsgt jz!42 #b00000000000000000000000000000000))))

(declare-fun lt!1691 () (_ FloatingPoint 11 53))

(declare-datatypes ((array!152 0))(
  ( (array!153 (arr!68 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!68 (_ BitVec 32))) )
))
(declare-fun q!70 () array!152)

(assert (=> b!2466 (= lt!1691 (select (arr!68 q!70) jz!42))))

(declare-fun lt!1697 () array!150)

(assert (=> b!2466 (= lt!1697 (array!151 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!2467 () Bool)

(declare-fun Unit!178 () Unit!176)

(assert (=> b!2467 (= e!1265 (tuple4!81 Unit!178 lt!1697 jz!42 lt!1691))))

(declare-fun b!2468 () Bool)

(declare-fun e!1264 () Bool)

(assert (=> b!2468 (= e!1262 e!1264)))

(declare-fun res!2015 () Bool)

(assert (=> b!2468 (=> (not res!2015) (not e!1264))))

(assert (=> b!2468 (= res!2015 (bvsge (select (arr!67 (_2!84 lt!1692)) (bvsub jz!42 #b00000000000000000000000000000001)) #b00000000100000000000000000000000))))

(declare-fun lt!1696 () (_ BitVec 32))

(assert (=> b!2468 (= lt!1696 #b00000000000000000000000000000000)))

(declare-fun b!2469 () Bool)

(declare-fun res!2014 () Bool)

(assert (=> b!2469 (=> (not res!2014) (not e!1266))))

(declare-fun qInv!0 (array!152) Bool)

(assert (=> b!2469 (= res!2014 (qInv!0 q!70))))

(declare-fun b!2470 () Bool)

(declare-fun lt!1693 () (_ BitVec 32))

(declare-datatypes ((tuple4!82 0))(
  ( (tuple4!83 (_1!85 Unit!176) (_2!85 (_ BitVec 32)) (_3!73 array!150) (_4!41 (_ BitVec 32))) )
))
(declare-fun e!1261 () tuple4!82)

(declare-fun Unit!179 () Unit!176)

(assert (=> b!2470 (= e!1261 (tuple4!83 Unit!179 lt!1693 (_2!84 lt!1692) lt!1696))))

(declare-fun res!2013 () Bool)

(assert (=> start!739 (=> (not res!2013) (not e!1266))))

(assert (=> start!739 (= res!2013 (and (bvsle #b00000000000000000000000000000010 jz!42) (bvslt jz!42 #b00000000000000000000000000010011)))))

(assert (=> start!739 e!1266))

(assert (=> start!739 true))

(declare-fun array_inv!30 (array!152) Bool)

(assert (=> start!739 (array_inv!30 q!70)))

(declare-fun b!2471 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!152 array!150 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!80)

(assert (=> b!2471 (= e!1265 (computeModuloWhile!0 jz!42 q!70 lt!1697 jz!42 lt!1691))))

(declare-fun b!2472 () Bool)

(declare-fun computeModuloWhile!1 ((_ BitVec 32) array!152 (_ BitVec 32) array!150 (_ BitVec 32)) tuple4!82)

(assert (=> b!2472 (= e!1261 (computeModuloWhile!1 jz!42 q!70 lt!1693 (_2!84 lt!1692) lt!1696))))

(declare-fun b!2473 () Bool)

(assert (=> b!2473 (= e!1264 (and (not (= (bvand jz!42 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand jz!42 #b10000000000000000000000000000000) (bvand (bvsub jz!42 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun lt!1694 () tuple4!82)

(assert (=> b!2473 (= lt!1694 e!1261)))

(declare-fun c!433 () Bool)

(assert (=> b!2473 (= c!433 (bvslt lt!1693 (bvsub jz!42 #b00000000000000000000000000000001)))))

(assert (=> b!2473 (= lt!1693 #b00000000000000000000000000000000)))

(assert (= (and start!739 res!2013) b!2469))

(assert (= (and b!2469 res!2014) b!2466))

(assert (= (and b!2466 c!434) b!2471))

(assert (= (and b!2466 (not c!434)) b!2467))

(assert (= (and b!2466 res!2016) b!2468))

(assert (= (and b!2468 res!2015) b!2473))

(assert (= (and b!2473 c!433) b!2472))

(assert (= (and b!2473 (not c!433)) b!2470))

(declare-fun m!3873 () Bool)

(assert (=> b!2469 m!3873))

(declare-fun m!3875 () Bool)

(assert (=> start!739 m!3875))

(declare-fun m!3877 () Bool)

(assert (=> b!2471 m!3877))

(declare-fun m!3879 () Bool)

(assert (=> b!2468 m!3879))

(declare-fun m!3881 () Bool)

(assert (=> b!2466 m!3881))

(declare-fun m!3883 () Bool)

(assert (=> b!2472 m!3883))

(check-sat (not b!2469) (not start!739) (not b!2472) (not b!2471))
(check-sat)
