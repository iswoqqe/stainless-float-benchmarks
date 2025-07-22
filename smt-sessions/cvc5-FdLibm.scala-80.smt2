; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!699 () Bool)

(assert start!699)

(declare-fun res!1977 () Bool)

(declare-fun e!1097 () Bool)

(assert (=> start!699 (=> (not res!1977) (not e!1097))))

(declare-fun jz!42 () (_ BitVec 32))

(assert (=> start!699 (= res!1977 (and (bvsle #b00000000000000000000000000000010 jz!42) (bvslt jz!42 #b00000000000000000000000000010011)))))

(assert (=> start!699 e!1097))

(assert (=> start!699 true))

(declare-datatypes ((array!111 0))(
  ( (array!112 (arr!49 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!49 (_ BitVec 32))) )
))
(declare-fun q!70 () array!111)

(declare-fun array_inv!21 (array!111) Bool)

(assert (=> start!699 (array_inv!21 q!70)))

(declare-fun b!2305 () Bool)

(declare-fun res!1976 () Bool)

(assert (=> b!2305 (=> (not res!1976) (not e!1097))))

(declare-fun qInv!0 (array!111) Bool)

(assert (=> b!2305 (= res!1976 (qInv!0 q!70))))

(declare-datatypes ((Unit!142 0))(
  ( (Unit!143) )
))
(declare-datatypes ((array!113 0))(
  ( (array!114 (arr!50 (Array (_ BitVec 32) (_ BitVec 32))) (size!50 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!54 0))(
  ( (tuple4!55 (_1!71 Unit!142) (_2!71 array!113) (_3!59 (_ BitVec 32)) (_4!27 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!1438 () tuple4!54)

(declare-fun b!2306 () Bool)

(declare-fun lt!1435 () (_ FloatingPoint 11 53))

(assert (=> b!2306 (= e!1097 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!1435) (fp.lt lt!1435 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!50 (_2!71 lt!1438)) (bvsub jz!42 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (let ((lhs!86 (ite (fp.isNaN lt!1435) #b00000000000000000000000000000000 (ite (fp.gt lt!1435 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt lt!1435 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero lt!1435)))))) (and (= (bvand lhs!86 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (not (= (bvand lhs!86 #b10000000000000000000000000000000) (bvand (bvadd lhs!86 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))))

(assert (=> b!2306 (= lt!1435 (fp.sub roundNearestTiesToEven (_4!27 lt!1438) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!27 lt!1438) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!27 lt!1438) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!27 lt!1438) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!27 lt!1438) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(declare-fun e!1096 () tuple4!54)

(assert (=> b!2306 (= lt!1438 e!1096)))

(declare-fun c!371 () Bool)

(assert (=> b!2306 (= c!371 (bvsgt jz!42 #b00000000000000000000000000000000))))

(declare-fun lt!1437 () (_ FloatingPoint 11 53))

(assert (=> b!2306 (= lt!1437 (select (arr!49 q!70) jz!42))))

(declare-fun lt!1436 () array!113)

(assert (=> b!2306 (= lt!1436 (array!114 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!2308 () Bool)

(declare-fun Unit!144 () Unit!142)

(assert (=> b!2308 (= e!1096 (tuple4!55 Unit!144 lt!1436 jz!42 lt!1437))))

(declare-fun b!2307 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!111 array!113 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!54)

(assert (=> b!2307 (= e!1096 (computeModuloWhile!0 jz!42 q!70 lt!1436 jz!42 lt!1437))))

(assert (= (and start!699 res!1977) b!2305))

(assert (= (and b!2305 res!1976) b!2306))

(assert (= (and b!2306 c!371) b!2307))

(assert (= (and b!2306 (not c!371)) b!2308))

(declare-fun m!4483 () Bool)

(assert (=> start!699 m!4483))

(declare-fun m!4485 () Bool)

(assert (=> b!2305 m!4485))

(declare-fun m!4487 () Bool)

(assert (=> b!2306 m!4487))

(declare-fun m!4489 () Bool)

(assert (=> b!2306 m!4489))

(declare-fun m!4491 () Bool)

(assert (=> b!2307 m!4491))

(push 1)

(assert (not b!2305))

(assert (not start!699))

(assert (not b!2307))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

