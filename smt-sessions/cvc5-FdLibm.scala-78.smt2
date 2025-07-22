; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!695 () Bool)

(assert start!695)

(declare-datatypes ((Unit!136 0))(
  ( (Unit!137) )
))
(declare-datatypes ((array!103 0))(
  ( (array!104 (arr!45 (Array (_ BitVec 32) (_ BitVec 32))) (size!45 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!50 0))(
  ( (tuple4!51 (_1!69 Unit!136) (_2!69 array!103) (_3!57 (_ BitVec 32)) (_4!25 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!1414 () tuple4!50)

(declare-fun jz!42 () (_ BitVec 32))

(declare-fun e!1080 () Bool)

(declare-fun lt!1412 () (_ FloatingPoint 11 53))

(declare-fun b!2282 () Bool)

(assert (=> b!2282 (= e!1080 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!1412) (fp.lt lt!1412 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!45 (_2!69 lt!1414)) (bvsub jz!42 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (not (fp.isNaN lt!1412)) (not (fp.gt lt!1412 ((_ to_fp 11 53) roundTowardNegative #b101111111111111111111111111111111)))))))

(assert (=> b!2282 (= lt!1412 (fp.sub roundNearestTiesToEven (_4!25 lt!1414) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!25 lt!1414) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!25 lt!1414) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!25 lt!1414) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!25 lt!1414) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(declare-fun e!1078 () tuple4!50)

(assert (=> b!2282 (= lt!1414 e!1078)))

(declare-fun c!365 () Bool)

(assert (=> b!2282 (= c!365 (bvsgt jz!42 #b00000000000000000000000000000000))))

(declare-fun lt!1413 () (_ FloatingPoint 11 53))

(declare-datatypes ((array!105 0))(
  ( (array!106 (arr!46 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!46 (_ BitVec 32))) )
))
(declare-fun q!70 () array!105)

(assert (=> b!2282 (= lt!1413 (select (arr!46 q!70) jz!42))))

(declare-fun lt!1411 () array!103)

(assert (=> b!2282 (= lt!1411 (array!104 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!2283 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!105 array!103 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!50)

(assert (=> b!2283 (= e!1078 (computeModuloWhile!0 jz!42 q!70 lt!1411 jz!42 lt!1413))))

(declare-fun b!2284 () Bool)

(declare-fun Unit!138 () Unit!136)

(assert (=> b!2284 (= e!1078 (tuple4!51 Unit!138 lt!1411 jz!42 lt!1413))))

(declare-fun res!1964 () Bool)

(assert (=> start!695 (=> (not res!1964) (not e!1080))))

(assert (=> start!695 (= res!1964 (and (bvsle #b00000000000000000000000000000010 jz!42) (bvslt jz!42 #b00000000000000000000000000010011)))))

(assert (=> start!695 e!1080))

(assert (=> start!695 true))

(declare-fun array_inv!19 (array!105) Bool)

(assert (=> start!695 (array_inv!19 q!70)))

(declare-fun b!2281 () Bool)

(declare-fun res!1965 () Bool)

(assert (=> b!2281 (=> (not res!1965) (not e!1080))))

(declare-fun qInv!0 (array!105) Bool)

(assert (=> b!2281 (= res!1965 (qInv!0 q!70))))

(assert (= (and start!695 res!1964) b!2281))

(assert (= (and b!2281 res!1965) b!2282))

(assert (= (and b!2282 c!365) b!2283))

(assert (= (and b!2282 (not c!365)) b!2284))

(declare-fun m!4463 () Bool)

(assert (=> b!2282 m!4463))

(declare-fun m!4465 () Bool)

(assert (=> b!2282 m!4465))

(declare-fun m!4467 () Bool)

(assert (=> b!2283 m!4467))

(declare-fun m!4469 () Bool)

(assert (=> start!695 m!4469))

(declare-fun m!4471 () Bool)

(assert (=> b!2281 m!4471))

(push 1)

(assert (not start!695))

(assert (not b!2283))

(assert (not b!2281))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

