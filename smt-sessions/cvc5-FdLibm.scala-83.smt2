; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!705 () Bool)

(assert start!705)

(declare-fun b!2341 () Bool)

(declare-fun res!1995 () Bool)

(declare-fun e!1123 () Bool)

(assert (=> b!2341 (=> (not res!1995) (not e!1123))))

(declare-datatypes ((array!123 0))(
  ( (array!124 (arr!55 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!55 (_ BitVec 32))) )
))
(declare-fun q!70 () array!123)

(declare-fun qInv!0 (array!123) Bool)

(assert (=> b!2341 (= res!1995 (qInv!0 q!70))))

(declare-fun jz!42 () (_ BitVec 32))

(declare-datatypes ((array!125 0))(
  ( (array!126 (arr!56 (Array (_ BitVec 32) (_ BitVec 32))) (size!56 (_ BitVec 32))) )
))
(declare-fun lt!1474 () array!125)

(declare-fun b!2343 () Bool)

(declare-datatypes ((Unit!151 0))(
  ( (Unit!152) )
))
(declare-datatypes ((tuple4!60 0))(
  ( (tuple4!61 (_1!74 Unit!151) (_2!74 array!125) (_3!62 (_ BitVec 32)) (_4!30 (_ FloatingPoint 11 53))) )
))
(declare-fun e!1125 () tuple4!60)

(declare-fun lt!1472 () (_ FloatingPoint 11 53))

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!123 array!125 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!60)

(assert (=> b!2343 (= e!1125 (computeModuloWhile!0 jz!42 q!70 lt!1474 jz!42 lt!1472))))

(declare-fun b!2344 () Bool)

(declare-fun Unit!153 () Unit!151)

(assert (=> b!2344 (= e!1125 (tuple4!61 Unit!153 lt!1474 jz!42 lt!1472))))

(declare-fun b!2342 () Bool)

(declare-fun lt!1473 () (_ FloatingPoint 11 53))

(declare-fun lt!1471 () tuple4!60)

(assert (=> b!2342 (= e!1123 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!1473) (fp.lt lt!1473 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvslt (select (arr!56 (_2!74 lt!1471)) (bvsub jz!42 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (not (fp.isNaN lt!1473)) (fp.gt lt!1473 ((_ to_fp 11 53) roundTowardNegative #b101111111111111111111111111111111)) (not (fp.lt lt!1473 ((_ to_fp 11 53) roundTowardPositive #b010000000000000000000000000000000)))))))

(assert (=> b!2342 (= lt!1473 (fp.sub roundNearestTiesToEven (_4!30 lt!1471) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!30 lt!1471) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!30 lt!1471) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!30 lt!1471) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!30 lt!1471) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!2342 (= lt!1471 e!1125)))

(declare-fun c!380 () Bool)

(assert (=> b!2342 (= c!380 (bvsgt jz!42 #b00000000000000000000000000000000))))

(assert (=> b!2342 (= lt!1472 (select (arr!55 q!70) jz!42))))

(assert (=> b!2342 (= lt!1474 (array!126 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun res!1994 () Bool)

(assert (=> start!705 (=> (not res!1994) (not e!1123))))

(assert (=> start!705 (= res!1994 (and (bvsle #b00000000000000000000000000000010 jz!42) (bvslt jz!42 #b00000000000000000000000000010011)))))

(assert (=> start!705 e!1123))

(assert (=> start!705 true))

(declare-fun array_inv!24 (array!123) Bool)

(assert (=> start!705 (array_inv!24 q!70)))

(assert (= (and start!705 res!1994) b!2341))

(assert (= (and b!2341 res!1995) b!2342))

(assert (= (and b!2342 c!380) b!2343))

(assert (= (and b!2342 (not c!380)) b!2344))

(declare-fun m!4513 () Bool)

(assert (=> b!2341 m!4513))

(declare-fun m!4515 () Bool)

(assert (=> b!2343 m!4515))

(declare-fun m!4517 () Bool)

(assert (=> b!2342 m!4517))

(declare-fun m!4519 () Bool)

(assert (=> b!2342 m!4519))

(declare-fun m!4521 () Bool)

(assert (=> start!705 m!4521))

(push 1)

(assert (not b!2343))

(assert (not b!2341))

(assert (not start!705))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

